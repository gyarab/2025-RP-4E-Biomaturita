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
        <p>Pár knih které se mohou hodit na přípravu k maturitě i na přijímací zkoušky na vysoké školy.</p>
    </section>

    <div class="container">
        <div class="resource-item">
            <img src="images/novy-prehled-biologie.jpg" alt="Nový přehled biologie" class="resource-image">
            <div class="resource-content">
                <h3>Nový přehled biologie - S. Rozsypal</h3>
                <p>Kniha vhodná jak pro přípravu na maturitu tak i na přípravu na přijímací zkoušky na vysoké školy. Jsou tam zpracovaná všechna důležitá témata i společně s šikovnými obrázky, které pomahaji vizualizaci tématu.</p>
            </div>
        </div>

        <div class="resource-item">
            <img src="images/biologie-rostlin.webp" alt="Biologie rostlin" class="resource-image">
            <div class="resource-content">
                <h3>Biologie rostlin - L. Kincl a kol.</h3>
                <p>Učebnice doporučená i pro přijímačky na vysokou školu, ale také velmi vhodná na spracovávání otázek k maturitě týkajících se rostlinné biologie.</p>
            </div>
        </div>

        <div class="resource-item">
            <img src="images/biologie-cloveka.webp" alt="Biologie člověka" class="resource-image">
            <div class="resource-content">
                <h3>Biologie člověka 1 a 2, Genetika - E. Kočárek</h3>
                <p>Učebnice vhodná jak pro maturitu, ale hravě pro přípravu na přijímačky na vysoké školy, hlavě na medicínu. Autor je profesorem na lékařské fakultě univerzity karlovy.</p>
            </div>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>
</body>
</html>