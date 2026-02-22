<?php
require_once 'db.php'; // Database connection file

// Get tema_id from URL parameter
$tema_id = isset($_GET['tema_id']) ? intval($_GET['tema_id']) : 1;

// Fetch image and areas from database
$stmt = $pdo->prepare("
    SELECT p.id, p.obrazek_path 
    FROM poznavacka p 
    WHERE p.tema_id = ? 
    LIMIT 1
");
$stmt->execute([$tema_id]);
$poznavacka = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$poznavacka) {
    die("No image found for this topic.");
}

// Fetch all clickable areas for this image
$stmt = $pdo->prepare("
    SELECT nazev, x, y, vyska, sirka 
    FROM image_areas 
    WHERE obrazek_id = ?
");
$stmt->execute([$poznavacka['id']]);
$areas = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (empty($areas)) {
    die("No clickable areas defined for this image.");
}
?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poznávačka</title>
    <link rel="stylesheet" href="style.css">
    <style>
        #game-container {
            position: relative;
            display: inline-block;
            margin: 2rem auto;
            border: 5px solid #2e7d32;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }
        #photo {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        #word {
            margin: 20px 0;
            font-size: 1.8rem;
            font-weight: bold;
            color: #1b5e20;
        }
        .feedback {
            margin-top: 10px;
            font-size: 1.2rem;
            color: #555;
        }
        .feedback.correct {
            color: #2e7d32;
        }
        .feedback.wrong {
            color: #c62828;
        }
    </style>
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <nav>
        <a href="mainpage.php">Domů</a>
        <a href="topics.php">Témata</a>
        <a href="resources.php">Zdroje</a>
        <a href="practice.php">Procvičování</a>
        <a href="contact.php">Kontakty</a>
    </nav>

    <section class="hero">
        <h2>Poznávačka</h2>
        <p>Otestuj své znalosti klikáním na správné místo na obrázku</p>
    </section>

    <div class="container">
        <p id="word">Klikni na: <span id="target-word"></span></p>
        <div id="game-container">
            <img id="photo" src="<?php echo htmlspecialchars($poznavacka['obrazek_path']); ?>" alt="Poznávačka">
        </div>
        <p class="feedback" id="feedback"></p>
        <p>Skóre: <span id="score">0</span> / <span id="total">0</span></p>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        const targets = <?php echo json_encode($areas); ?>;
        
        let currentTarget = null;
        let score = 0;
        let total = 0;

        const wordElement = document.getElementById("target-word");
        const feedbackElement = document.getElementById("feedback");
        const photoElement = document.getElementById("photo");
        const scoreElement = document.getElementById("score");
        const totalElement = document.getElementById("total");

        function setRandomTarget() {
            currentTarget = targets[Math.floor(Math.random() * targets.length)];
            wordElement.textContent = currentTarget.nazev;
            feedbackElement.textContent = "";
            feedbackElement.className = "feedback";
        }

        photoElement.addEventListener("click", (event) => {
            const rect = photoElement.getBoundingClientRect();
            const clickX = event.clientX - rect.left;
            const clickY = event.clientY - rect.top;

            // Scale coordinates based on actual vs displayed image size
            const scaleX = photoElement.naturalWidth / photoElement.width;
            const scaleY = photoElement.naturalHeight / photoElement.height;
            const scaledX = clickX * scaleX;
            const scaledY = clickY * scaleY;

            total++;
            totalElement.textContent = total;

            if (
                scaledX >= currentTarget.x &&
                scaledX <= currentTarget.x + currentTarget.sirka &&
                scaledY >= currentTarget.y &&
                scaledY <= currentTarget.y + currentTarget.vyska
            ) {
                score++;
                scoreElement.textContent = score;
                feedbackElement.textContent = "Správně! ✓";
                feedbackElement.className = "feedback correct";
                setTimeout(setRandomTarget, 1000);
            } else {
                feedbackElement.textContent = "Zkus znovu! ✗";
                feedbackElement.className = "feedback wrong";
            }
        });

        // Initialize the game
        setRandomTarget();
    </script>
</body>
</html>