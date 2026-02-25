<?php
// filepath: c:\Users\Žofie\2025-RP-4E-Biomaturita\topic.php
session_start();

include 'pripojeni.php';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// Get topic ID from URL
$topic_id = $_GET['id'] ?? null;

if (!$topic_id) {
    header("Location: topics.php");
    exit;
}

// Fetch topic from database
$stmt = $pdo->prepare("SELECT nazev, obsah FROM tema WHERE id = ?");
$stmt->execute([$topic_id]);
$topic = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$topic) {
    header("Location: topics.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($topic['nazev']); ?> - Biomaturita</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <?php include 'menu.php'; ?>

    <div class="container">
        <div class="topic-header" style="text-decoration: none; font-weight: bold;">
            <h2><?php echo htmlspecialchars($topic['nazev']); ?></h2>
        </div>

        <div class="topic-content" style="text-decoration: none; font-weight: bold;">
            <div id="topicText">
                <?php echo nl2br(htmlspecialchars($topic['obsah'])); ?>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biology Exam Prep. All rights reserved.</p>
    </footer>
</body>
</html>