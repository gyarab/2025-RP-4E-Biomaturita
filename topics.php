<?php
// filepath: c:\Users\Žofie\2025-RP-4E-Biomaturita\topics.php
session_start();

include 'pripojeni.php';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

// Fetch all topics from database
$stmt = $pdo->query("SELECT id, nazev, obsah FROM tema ORDER BY id");
$topics = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Témata - Biomaturita</title>
    <link rel="stylesheet" href="style.css">
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
        <h2>Témata biologie</h2>
        <p>Ovládněte všechna základní témata pro vaši maturitu z biologie</p>
    </section>

    <div class="container">
        <div class="topics-list">
            <?php foreach ($topics as $topic): ?>
            <a href="topic.php?id=<?php echo htmlspecialchars($topic['id']); ?>" class="topic-card-link" style="text-decoration: none; font-weight: bold;">
                <div class="topic-card">
                    <h3><?php echo htmlspecialchars($topic['nazev']); ?></h3>
                    <p><?php echo htmlspecialchars(substr($topic['obsah'], 0, 100)); ?>...</p>
                </div>
            </a>
            <?php endforeach; ?>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>
</body>
</html>
