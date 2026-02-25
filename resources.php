<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studijní materiály - Biomaturita</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .resource-item {
            display: flex;
            align-items: center;
            gap: 2rem;
            margin: 2rem 0;
            padding: 2rem;
            background: #e8f5e9;
            border-radius: 8px;
            border-left: 5px solid #2e7d32;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .resource-item:nth-child(even) {
            flex-direction: row-reverse;
        }

        .resource-image {
            flex-shrink: 0;
            width: 250px;
            height: 250px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
        }

        .resource-content h3 {
            color: #1b5e20;
            margin-bottom: 0.5rem;
            font-size: 1.5rem;
        }

        .resource-content p {
            color: #333;
            line-height: 1.8;
        }

        @media (max-width: 768px) {
            .resource-item, .resource-item:nth-child(even) {
                flex-direction: column;
            }

            .resource-image {
                width: 100%;
                height: auto;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <?php include 'menu.php'; ?>

    <section class="hero">
        <h2>📖 Studijní materiály</h2>
        <p>Objevte doporučené zdroje a materiály pro přípravu na maturitu</p>
    </section>

    <div class="container">
        <div class="resource-item">
            <img src="images/book1.jpg" alt="Biologie učebnice" class="resource-image">
            <div class="resource-content">
                <h3>Biologie - Učebnice</h3>
                <p>Komplexní učebnice pokrývající všechna maturitní témata. Ideální pro základní pochopení konceptů a detailní vysvětlení biologických procesů.</p>
            </div>
        </div>

        <div class="resource-item">
            <img src="images/book2.jpg" alt="Maturitní cvičení" class="resource-image">
            <div class="resource-content">
                <h3>Maturitní cvičení a testy</h3>
                <p>Sbírka cvičení zaměřená speciálně na maturitní zkoušku. Obsahuje reálné testy a odpovědi s odůvodněním.</p>
            </div>
        </div>

        <div class="resource-item">
            <img src="images/book3.jpg" alt="Anatomie a fyziologie" class="resource-image">
            <div class="resource-content">
                <h3>Anatomie a fyziologie člověka</h3>
                <p>Szczegółowe průvodce lidským tělem s vědeckými ilustracemi. Perfektní pro pochopení základních principů medicíny a zdravovědy.</p>
            </div>
        </div>

        <div class="resource-item">
            <img src="images/book4.jpg" alt="Ekologie a evoluce" class="resource-image">
            <div class="resource-content">
                <h3>Ekologie a evoluce</h3>
                <p>Moderní přístup k pochopení ekosystémů a evolučních procesů. Zahrnuje příklady z osobní zkušenosti a současné environmentální problémy.</p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>
</body>
</html>