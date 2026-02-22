<?php
// Pexeso Menu Page

// Database connection
include 'pripojeni.php';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Fetch topics from database
$query = "SELECT id, nazev FROM tema ORDER BY nazev ASC";
$stmt = $pdo->prepare($query);
$stmt->execute();
$topics = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pexeso Menu</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .pexeso-header {
            background: linear-gradient(135deg, #2e7d32 0%, #558b2f 100%);
            color: white;
            padding: 2rem;
            border-radius: 8px;
            margin-bottom: 2rem;
            text-align: center;
        }
        
        .pexeso-header h2 {
            margin-bottom: 0.5rem;
        }
        
        .topics-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
        }
        
        .topic-link {
            text-decoration: none;
        }
        
        .topic-item {
            background: #e8f5e9;
            padding: 1.5rem;
            border-radius: 8px;
            border-left: 5px solid #2e7d32;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
            text-align: center;
        }
        
        .topic-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }
        
        .topic-item h3 {
            color: #1b5e20;
            margin-bottom: 0.5rem;
        }
        
        .topic-item p {
            font-size: 0.95rem;
            color: #555;
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

    <div class="container">
        <div class="pexeso-header">
            <h2>🧩 Pexeso</h2>
            <p>Vyberte téma a začněte cvičit paměť a znalosti!</p>
        </div>

        <div class="topics-grid">
            <?php foreach ($topics as $topic): ?>
                <a href="pexeso.php?tema_id=<?php echo $topic['id']; ?>" class="topic-link">
                    <div class="topic-item">
                        <h3><?php echo htmlspecialchars($topic['nazev']); ?></h3>
                        <p>Procvič si paměť a znalosti</p>
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
