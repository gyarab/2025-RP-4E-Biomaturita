<?php
// Pexeso Game Page
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
    die("Téma nebylo vybráno.");
}

// Fetch topic name
$topicQuery = "SELECT nazev FROM tema WHERE id = :tema_id";
$topicStmt = $pdo->prepare($topicQuery);
$topicStmt->execute(['tema_id' => $tema_id]);
$topic = $topicStmt->fetch(PDO::FETCH_ASSOC);

if (!$topic) {
    die("Téma neexistuje.");
}

// Fetch pexeso cards from database
$cardsQuery = "SELECT id, text_karty_1, text_karty_2 FROM pexeso WHERE tema_id = :tema_id";
$cardsStmt = $pdo->prepare($cardsQuery);
$cardsStmt->execute(['tema_id' => $tema_id]);
$pexesoCards = $cardsStmt->fetchAll(PDO::FETCH_ASSOC);

// Prepare cards data for JavaScript
$cards = [];
foreach ($pexesoCards as $card) {
    $cards[] = ['content' => $card['text_karty_1'], 'pair' => $card['text_karty_2']];
    $cards[] = ['content' => $card['text_karty_2'], 'pair' => $card['text_karty_1']];
}

// Shuffle cards
shuffle($cards);
$cardsJson = json_encode($cards);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pexeso Game</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .game-board {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1rem;
            margin: 2rem auto;
            max-width: 600px;
            grid-auto-rows: 2fr;
        }
        .card {
            width: 100%;
            aspect-ratio: 0.9;
            background: #e8f5e9;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border-radius: 8px;
            border-left: 5px solid #2e7d32;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            font-size: 0.8rem;
            font-weight: bold;
            transition: transform 0.2s, box-shadow 0.2s;
            padding: 1rem;
            text-align: center;
            box-sizing: border-box;
            overflow: hidden;
            word-break: break-word;
            overflow-y: auto;

        }
        .card:hover:not(.matched):not(.flipped) {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }
        .card.flipped {
            background: #fff;
            color: #1b5e20;
        }
        .card.matched {
            background: #c8e6c9;
            cursor: default;
        }
    </style>
</head>
<body>
    <header>
        <h1>🧩 Pexeso Game</h1>
        <p><?php echo htmlspecialchars($topic['nazev']); ?></p>
    </header>

    <?php include 'menu.php'; ?>
    <a href="pexeso_menu.php" class="back-button">← Zpět na témata</a>
    <div class="container">
        <section class="practice-options">
            <h2>Pexeso - <?php echo htmlspecialchars($topic['nazev']); ?></h2>
            <p>Najděte všechny páry karet!</p>
            <div class="game-board" id="gameBoard">
                <!-- Cards will be dynamically loaded here -->
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        const cards = <?php echo $cardsJson; ?>;
        let flippedCards = [];
        let matchedPairs = 0;

        function initGame() {
            const gameBoard = document.getElementById('gameBoard');
            gameBoard.innerHTML = '';

            cards.forEach((card, index) => {
                const cardElement = document.createElement('div');
                cardElement.classList.add('card');
                cardElement.dataset.index = index;
                cardElement.dataset.content = card.content;
                cardElement.textContent = '?';
                cardElement.addEventListener('click', () => flipCard(cardElement));
                gameBoard.appendChild(cardElement);
            });
        }

        function flipCard(card) {
            if (flippedCards.length < 2 && !card.classList.contains('flipped') && !card.classList.contains('matched')) {
                card.classList.add('flipped');
                card.textContent = card.dataset.content;
                flippedCards.push(card);

                if (flippedCards.length === 2) {
                    checkMatch();
                }
            }
        }

        function checkMatch() {
            const [card1, card2] = flippedCards;
            const index1 = parseInt(card1.dataset.index);
            const index2 = parseInt(card2.dataset.index);

            if (cards[index1].content === cards[index2].pair || cards[index2].content === cards[index1].pair) {
                card1.classList.add('matched');
                card2.classList.add('matched');
                matchedPairs++;

                if (matchedPairs === cards.length / 2) {
                    setTimeout(() => alert('Gratuluji! Vyhráli jste!'), 500);
                }
            } else {
                setTimeout(() => {
                    card1.classList.remove('flipped');
                    card2.classList.remove('flipped');
                    card1.textContent = '?';
                    card2.textContent = '?';
                }, 1000);
            }

            flippedCards = [];
        }

        document.addEventListener('DOMContentLoaded', initGame);
    </script>
</body>
</html>