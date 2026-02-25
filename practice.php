<!-- filepath: c:\Users\Žofie\2025-RP-4E-Biomaturita\resources.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practice Resources - Biology Exam Prep</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <?php include 'menu.php'; ?>

    <section class="hero">
        <h2>Procvičování</h2>
        <p>Vyber si preferovaný způsob učení a zvládni biologii</p>
    </section>

    <section class="practice-options">
        <h2>Možnosti procvičování</h2>
        <div class="practice-cards">
            <a href="otazky_menu.php">
            <div class="practice-card">
                <h3>📝 Otázky s výběrem</h3>
                <p>Testuj své znalosti otázkami s výběrem odpovědí pokrývajícími všechna hlavní témata k jednotlivým otázkám.</p>
            </div>
            </a>
            <a href="poznavacka_menu.php">
            <div class="practice-card">
                <h3>🎯 Poznavačka</h3>
                <p>Zkus si poznávačku na fotkách k jednotlivým tématům.</p>
            </div>
            </a>
            <a href="pexeso_menu.php">
                <div class="practice-card">
                    <h3>🧩 Pexeso</h3>
                    <p>Spáruj termín a jeho definici pro procvičení podstatných termínů k jednotlivým otázkám.</p>
                </div>
            </a>
        </div>
    </section>

    <footer>
        <p>&copy; 2025 Biology Exam Prep. All rights reserved.</p>
    </footer>
</body>
</html>