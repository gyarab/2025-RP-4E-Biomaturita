<?php
// filepath: c:\Users\Žofie\2025-RP-4E-Biomaturita\otazky.php

// Database connection
include 'pripojeni.php';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Get tema_id from URL
$tema_id = isset($_GET['tema_id']) ? intval($_GET['tema_id']) : 0;

if ($tema_id === 0) {
    header("Location: otazky_menu.php");
    exit;
}

// Fetch tema name
$tema_query = "SELECT nazev FROM tema WHERE id = ?";
$tema_stmt = $pdo->prepare($tema_query);
$tema_stmt->execute([$tema_id]);
$tema = $tema_stmt->fetch(PDO::FETCH_ASSOC);

if (!$tema) {
    header("Location: otazky_menu.php");
    exit;
}

// Fetch questions and answers for this tema
$query = "SELECT o.id, o.text_otazky, a.id as odpoved_id, a.text_odpovedi, a.pravdivost
          FROM otazky o
          LEFT JOIN odpovedi a ON o.id = a.otazka_id
          WHERE o.tema_id = ?
          ORDER BY o.id ASC, a.id ASC";
$stmt = $pdo->prepare($query);
$stmt->execute([$tema_id]);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Group answers by question
$questions = [];
foreach ($results as $row) {
    if (!isset($questions[$row['id']])) {
        $questions[$row['id']] = [
            'id' => $row['id'],
            'text' => $row['text_otazky'],
            'odpovedi' => []
        ];
    }
    if ($row['odpoved_id']) {
        $questions[$row['id']]['odpovedi'][] = [
            'id' => $row['odpoved_id'],
            'text' => $row['text_odpovedi'],
            'spravna' => $row['pravdivost']
        ];
    }
}
?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otázky - <?php echo htmlspecialchars($tema['nazev']); ?></title>
    <link rel="stylesheet" href="style.css">
    <style>
        .otazky-header {
            background: linear-gradient(135deg, #1976d2 0%, #1565c0 100%);
            color: white;
            padding: 2rem;
            border-radius: 8px;
            margin-bottom: 2rem;
            text-align: center;
        }

        .questions-container {
            max-width: 900px;
            margin: 0 auto;
        }

        .question-item {
            background: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .question-number {
            font-size: 1.2rem;
            font-weight: bold;
            color: #1976d2;
            margin-bottom: 0.5rem;
        }

        .question-text {
            font-size: 1.1rem;
            margin-bottom: 1rem;
            color: #333;
        }

        .answers-container {
            margin: 1rem 0;
        }

        .answer-option {
            display: flex;
            align-items: center;
            padding: 0.75rem;
            margin: 0.5rem 0;
            border: 2px solid #ddd;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .answer-option:hover {
            border-color: #1976d2;
            background-color: #f5f5f5;
        }

        .answer-option input[type="radio"] {
            margin-right: 1rem;
            cursor: pointer;
            width: 18px;
            height: 18px;
        }

        .answer-option label {
            flex: 1;
            cursor: pointer;
            margin: 0;
        }

        .answer-option.correct {
            background-color: #c8e6c9;
            border-color: #4caf50;
        }

        .answer-option.incorrect {
            background-color: #ffcdd2;
            border-color: #f44336;
        }

        .check-button {
            background: linear-gradient(135deg, #1976d2 0%, #1565c0 100%);
            color: white;
            padding: 0.75rem 2rem;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 2rem;
            width: 100%;
            transition: transform 0.2s;
        }

        .check-button:hover {
            transform: translateY(-2px);
        }

        .check-button:disabled {
            opacity: 0.6;
            cursor: not-allowed;
        }

        .back-button {
            display: inline-block;
            margin-bottom: 1rem;
            color: #1976d2;
            text-decoration: none;
            font-weight: bold;
        }

        .back-button:hover {
            text-decoration: underline;
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <?php include 'menu.php'; ?>

    <div class="container">
        <a href="otazky_menu.php" class="back-button">← Zpět na témata</a>

        <div class="otazky-header">
            <h2>❓ <?php echo htmlspecialchars($tema['nazev']); ?></h2>
            <p>Vyberte správné odpovědi a ověřte si své znalosti</p>
        </div>

        <div class="questions-container">
            <form id="questionsForm">
            <?php $questionNumber = 1; foreach ($questions as $question): ?>
                <div class="question-item">
                <div class="question-number">Otázka <?php echo $questionNumber; ?></div>
                <div class="question-text"><?php echo htmlspecialchars($question['text']); ?></div>
                
                <div class="answers-container">
                    <?php foreach ($question['odpovedi'] as $answer): ?>
                    <div class="answer-option">
                        <input type="radio" 
                           name="question_<?php echo $question['id']; ?>" 
                           value="<?php echo $answer['id']; ?>"
                           data-correct="<?php echo $answer['spravna'] ? 'true' : 'false'; ?>">
                        <label><?php echo htmlspecialchars($answer['text']); ?></label>
                    </div>
                    <?php endforeach; ?>
                </div>
                </div>
            <?php $questionNumber++; endforeach; ?>

            <button type="button" class="check-button" onclick="checkAnswers()">Ověřit odpovědi</button>
            <button type="button" class="check-button" onclick="location.reload()">Začít znovu</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        function checkAnswers() {
            const form = document.getElementById('questionsForm');
            const radioButtons = form.querySelectorAll('input[type="radio"]');
            let answered = false;

            radioButtons.forEach(radio => {
                if (radio.checked) {
                    answered = true;
                    const answerOption = radio.closest('.answer-option');
                    const isCorrect = radio.dataset.correct === 'true';
                    
                    if (isCorrect) {
                        answerOption.classList.add('correct');
                        answerOption.classList.remove('incorrect');
                    } else {
                        answerOption.classList.add('incorrect');
                        answerOption.classList.remove('correct');
                    }
                } else {
                    const answerOption = radio.closest('.answer-option');
                    const isCorrect = radio.dataset.correct === 'true';
                    
                    if (isCorrect) {
                        answerOption.classList.add('correct');
                    } else {
                        answerOption.classList.remove('correct', 'incorrect');
                    }
                }
            });

            if (!answered) {
                alert('Prosím vyberte alespoň jednu odpověď!');
            }
        }
    </script>
</body>
</html>