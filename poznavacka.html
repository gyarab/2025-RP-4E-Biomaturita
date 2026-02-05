<!DOCTYPE html>
<html lang="en">
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
    </style>
</head>
<body>
    <header>
        <h1>🧬 Biomaturita</h1>
        <p>Připrav se na maturitu z biologie</p>
    </header>

    <nav>
        <a href="mainpage.html">Domů</a>
        <a href="topics.html">Témata</a>
        <a href="resources.html">Zdroje</a>
        <a href="practice.html">Procvičování</a>
        <a href="contact.html">Kontakty</a>
    </nav>

    <section class="hero">
        <h2>Poznávačka</h2>
        <p>Otestuj své znalosti klikáním na správné místo na obrázku</p>
    </section>

    <div class="container">
        <p id="word">Klikni na: [Word]</p>
        <div id="game-container">
            <img id="photo" src="your-photo.jpg" alt="Game Photo">
        </div>
        <p class="feedback" id="feedback"></p>
    </div>

    <footer>
        <p>&copy; 2025 Biomaturita. All rights reserved.</p>
    </footer>

    <script>
        // Example data (replace with database connection later)
        const targets = [
            { word: "Tree", xRange: [50, 150], yRange: [100, 200] },
            { word: "House", xRange: [200, 300], yRange: [250, 350] },
            { word: "Car", xRange: [400, 500], yRange: [300, 400] }
        ];

        let currentTarget = null;

        const wordElement = document.getElementById("word");
        const feedbackElement = document.getElementById("feedback");
        const photoElement = document.getElementById("photo");

        function setRandomTarget() {
            currentTarget = targets[Math.floor(Math.random() * targets.length)];
            wordElement.textContent = `Click on: ${currentTarget.word}`;
        }

        photoElement.addEventListener("click", (event) => {
            const rect = photoElement.getBoundingClientRect();
            const clickX = event.clientX - rect.left;
            const clickY = event.clientY - rect.top;

            if (
                clickX >= currentTarget.xRange[0] &&
                clickX <= currentTarget.xRange[1] &&
                clickY >= currentTarget.yRange[0] &&
                clickY <= currentTarget.yRange[1]
            ) {
                feedbackElement.textContent = "Correct!";
                setRandomTarget();
            } else {
                feedbackElement.textContent = "Try again!";
            }
        });

        // Initialize the game
        setRandomTarget();
    </script>
</body>
</html>