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
        }
        .card {
            width: 100%;
            aspect-ratio: 1;
            background: #e8f5e9;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border-radius: 8px;
            border-left: 5px solid #2e7d32;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            font-size: 1.5rem;
            font-weight: bold;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }
        .card.flipped {
            background: #fff;
            color: #1b5e20;
        }
    </style>
</head>
<body>
    <header>
        <h1>🧩 Pexeso Game</h1>
        <p>Procvičte si paměť a znalosti zábavným způsobem</p>
    </header>

    <nav>
        <a href="mainpage.html">Domů</a>
        <a href="topics.html">Témata</a>
        <a href="resources.html">Zdroje</a>
        <a href="practice.html">Procvičování</a>
        <a href="contact.html">Kontakty</a>
    </nav>

    <div class="container">
        <section class="practice-options">
            <h2>Pexeso</h2>
            <p>Najděte všechny páry karet a procvičte si paměť!</p>
            <div class="game-board" id="gameBoard">
                <!-- Cards will be dynamically loaded here -->
            </div>
        </section>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        async function loadCards() {
            // Replace with your database fetching logic
            const response = await fetch('your-database-endpoint');
            const cards = await response.json();

            const gameBoard = document.getElementById('gameBoard');
            cards.forEach(card => {
                const cardElement = document.createElement('div');
                cardElement.classList.add('card');
                cardElement.dataset.id = card.id;
                cardElement.dataset.content = card.content;
                cardElement.addEventListener('click', () => flipCard(cardElement));
                gameBoard.appendChild(cardElement);
            });
        }

        function flipCard(card) {
            card.classList.toggle('flipped');
            if (card.classList.contains('flipped')) {
                card.textContent = card.dataset.content;
            } else {
                card.textContent = '';
            }
        }

        document.addEventListener('DOMContentLoaded', loadCards);
    </script>
</body>
</html>