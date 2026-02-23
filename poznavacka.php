<?php

include 'pripojeni.php';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

$tema_id = isset($_GET['tema_id']) ? intval($_GET['tema_id']) : 1;

$stmt = $pdo->prepare("
    SELECT nazev FROM tema WHERE id = ?
");
$stmt->execute([$tema_id]);
$tema = $stmt->fetch(PDO::FETCH_ASSOC);

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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poznávačka</title>
    <link rel="stylesheet" href="style.css">
    <style>
        #image-container { position: relative; display: inline-block; }
        #feedback { margin: 20px 0; font-size: 18px; font-weight: bold; }
        .correct { color: green; }
        .incorrect { color: red; }
        .topic-info { margin-bottom: 30px; }
        .topic-info h2 { color: #1976d2; margin-bottom: 10px; }
        .current-part { font-size: 20px; font-weight: bold; color: #0d47a1; background: #e3f2fd; padding: 15px; border-radius: 8px; text-align: center; margin-bottom: 20px; }
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

    <div class="container">
        <div class="topic-info">
            <h2><?php echo htmlspecialchars($tema['nazev']); ?></h2>
        </div>
        <div class="current-part" id="current-part">Klikni na: <span id="part-name"></span></div>
        <div id="feedback"></div>
        <div id="image-container">
            <img src="<?php echo htmlspecialchars($poznavacka['obrazek_path']); ?>" id="clickable-image" style="cursor: pointer;">
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        const areas = <?php echo json_encode($areas); ?>;
        const image = document.getElementById('clickable-image');
        const feedback = document.getElementById('feedback');
        const partName = document.getElementById('part-name');
        let currentAreaIndex = 0;

        function updateCurrentPart() {
            if (currentAreaIndex < areas.length) {
                partName.textContent = areas[currentAreaIndex].nazev;
            }
        }

        updateCurrentPart();

        image.addEventListener('click', function(event) {
            const rect = image.getBoundingClientRect();
            const clickX = event.clientX - rect.left;
            const clickY = event.clientY - rect.top;

            const currentArea = areas[currentAreaIndex];
            const areaLeft = currentArea.x;
            const areaTop = currentArea.y;
            const areaRight = areaLeft + currentArea.sirka;
            const areaBottom = areaTop + currentArea.vyska;

            if (clickX >= areaLeft && clickX <= areaRight && clickY >= areaTop && clickY <= areaBottom) {
                feedback.className = 'correct';
                feedback.textContent = 'Správně! ✓ ' + currentArea.nazev;
                currentAreaIndex++;
                if (currentAreaIndex >= areas.length) {
                    feedback.textContent = 'Hotovo! Všechny oblasti kliknuty správně! ✓';
                } else {
                    updateCurrentPart();
                }
            } else {
                feedback.className = 'incorrect';
                feedback.textContent = 'Špatně! ✗ Klikni na: ' + currentArea.nazev;
            }
        });
    </script>
</body>
</html>
