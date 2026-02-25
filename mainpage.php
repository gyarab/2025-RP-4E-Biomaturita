<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biomaturita</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <?php include 'menu.php'; ?>

    <section class="hero">
        <h2>Nauč se vše co potřebuješ k maturitě z biologie</h2>
        <p>Projdi si spracovaná témata a procvič si své znalosti ve třech typech cvičeí</p>
    </section>

    <div class="container">
        <div class="sections" >
            <a href="topics.php">
                <div class="card">
                    <h3>🔬 Témata</h3>
                    <p>Projdi si maturitní témata zpracovaná do zápisků.</p>
                </div>
            </a>
            <a href="practice.php">
                <div class="card">
                    <h3>📊 Procvičování pomocí různých cvičení</h3>
                    <p>Otestujte své znalosti pomocí interaktivních procvičování a otázek na důležité informace k daným tématům.</p>
                </div>
            </a>
            <a href="resources.php">
                <div class="card">
                    <h3>📖 Studijní materiály</h3>
                    <p>Koukni se na různé doporučené knihy které můžeš využít na učení nebo i vlastní spracovávání otázek</p>
                </div>
            </a>
        </div>
    </div>
    <section class="purpose">
        <h2>Náš cíl</h2>
        <p>Biomaturita je věnována pomoci studentům uspět u maturitní zkoušky z biologie. Najdete tu spracovaná jednotlivé maturitní otázky a ke každé z nich procvičování. Slouží pro všechny maturanty a maturantky co nechtějí nechat vše na poslední chvíli.</p>
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
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>
</body>
</html>