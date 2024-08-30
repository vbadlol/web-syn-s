<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Synapse S</title>
    <style>
        :root {
            --main-bg: linear-gradient(135deg, #16141f, #0c0a14);
            --card-bg: linear-gradient(145deg, #1e1e2e, #24243c);
            --accent: #00a2ff;
            --text: #ffffff;
            --shadow-light: rgba(255, 255, 255, 0.05);
            --shadow-dark: rgba(0, 0, 0, 0.2);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: var(--main-bg);
            color: var(--text);
            line-height: 1.6;
            overflow-x: hidden;
        }

        #particles-js {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: -1;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            position: relative;
            z-index: 1;
        }

        header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    background: linear-gradient(145deg, #1a1825, #161520);
    border-radius: 15px;
    box-shadow: 8px 8px 16px var(--shadow-dark), 
                -8px -8px 16px var(--shadow-light);
    margin: 2rem 0;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
    background: linear-gradient(45deg, var(--accent), #00a2ff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    padding: 0.5rem 1rem;
    border-radius: 10px;
}

nav {
    display: flex;
    gap: 1rem;
}

nav a {
    color: var(--text);
    text-decoration: none;
    padding: 0.5rem 1rem;
    border-radius: 10px;
    transition: all 0.3s ease;
    box-shadow: 2px 2px 5px var(--shadow-dark), 
                -2px -2px 5px var(--shadow-light);
}

nav a:hover {
    color: var(--accent);
    box-shadow: inset 2px 2px 5px var(--shadow-dark), 
                inset -2px -2px 5px var(--shadow-light);
}

        .hero {
            text-align: center;
            padding: 6rem 0;
        }

        h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(45deg, var(--accent), #00a2ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .subtitle {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            opacity: 0.8;
        }

        .btn {
            background: linear-gradient(45deg, var(--accent), #00a2ff);
            color: var(--text);
            padding: 0.8rem 2rem;
            border: none;
            border-radius: 50px;
            font-size: 1rem;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            margin: 0 0.5rem;
            box-shadow: 3px 3px 6px var(--shadow-dark), -3px -3px 6px var(--shadow-light);
            position: relative;
            overflow: hidden;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 4px 4px 8px var(--shadow-dark), -4px -4px 8px var(--shadow-light);
        }

        .btn::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.3s, height 0.3s;
        }

        .btn:hover::after {
            width: 300px;
            height: 300px;
        }

        .section {
            padding: 1rem 0;
        }

        .card {
            background: var(--card-bg);
            border-radius: 15px;
            padding: 2rem;
            margin-bottom: 2rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 6px 6px 12px var(--shadow-dark), -6px -6px 12px var(--shadow-light);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 8px 8px 16px var(--shadow-dark), -8px -8px 16px var(--shadow-light);
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
            background: linear-gradient(45deg, var(--accent), #00a2ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .glass-card {
            background: rgba(138, 43, 226, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 2rem;
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 6px 6px 12px var(--shadow-dark), -6px -6px 12px var(--shadow-light);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .fade-in {
            animation: fadeIn 1s ease-out forwards;
            opacity: 0;
        }

        a {
            color: var(--accent);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #00a2ff;
        }

        footer {
            background: var(--card-bg);
            padding: 2rem 0;
            text-align: center;
            margin-top: 2rem;
        }

        .footer-content {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .footer-section {
            margin: 1rem;
        }

        .footer-section h3 {
            margin-bottom: 1rem;
        }

        .social-icons a {
            margin: 0 0.5rem;
            font-size: 1.5rem;
        }

        .loader-wrapper {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: var(--main-bg);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

        .loader {
            width: 50px;
            height: 50px;
            border: 5px solid var(--accent);
            border-top: 5px solid transparent;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>

    <div class="loader-wrapper">
        <div class="loader"></div>
    </div>

    <div id="particles-js"></div>
    <div class="container">
        <header>
            <div class="logo">Synapse S</div>
            <nav>
                <a href="https://discord.gg/Uku7rvTWPX">download</a>
                <a href="https://discord.gg/Uku7rvTWPX">Discord</a>
            </nav>
        </header>

        <section class="hero fade-in" id="home">
            <h1>Synapse S</h1>
            <p class="subtitle">The Future of Exploting!</p>
            <button class="btn" onclick="location.href='https://discord.gg/Uku7rvTWPX';">Discord</button>
            <button class="btn" onclick="location.href='https://discord.gg/Uku7rvTWPX';">download</button>
        </section>

        <section class="section fade-in" id="about">
            <div class="glass-card">
                <h2>About Synapse S</h2>
                <p>We are offering everyone a working executor since 2024!</p>
            </div>
        </section>

        <section class="section fade-in" id="products">
            <div class="glass-card">
                <h2>Premium Ui preview with 70% unc!<h2>
                <img src="https://cdn.discordapp.com/attachments/1279050673748705280/1279061860150153307/image.png?ex=66d312af&is=66d1c12f&hm=f8aefb6be46af2a73ec0db0339a46f466bd93073a3efaac3b99fe7e4dfa24dbe&" alt="With free and premium ui with 70% unc!">
            </div>
        </section>

        <footer>
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Contact</h3>
                    <div class="social-icons">
                        <a href="https://discord.gg/Uku7rvTWPX" target="_blank">Discord</a>
                        <a href="https://discord.gg/Uku7rvTWPX" target="_blank">download</a>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>Synapse S</h3>
                    <p>Offical Synapse S website</p>
                </div>
            </div>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const fadeElements = document.querySelectorAll('.fade-in');
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.opacity = 1;
                        entry.target.style.transform = 'translateY(0)';
                    }
                });
            }, { threshold: 0.1 });

            fadeElements.forEach(el => observer.observe(el));
        });

        particlesJS('particles-js', {
            particles: {
                number: { value: 80, density: { enable: true, value_area: 800 } },
                color: { value: "#8a2be2" },
                shape: { type: "circle" },
                opacity: { value: 0.5, random: false },
                size: { value: 3, random: true },
                line_linked: { enable: true, distance: 150, color: "#8a2be2", opacity: 0.4, width: 1 },
                move: { enable: true, speed: 2, direction: "none", random: false, straight: false, out_mode: "out", bounce: false }
            },
            interactivity: {
                detect_on: "canvas",
                events: { onhover: { enable: true, mode: "repulse" }, onclick: { enable: true, mode: "push" }, resize: true },
                modes: { repulse: { distance: 100, duration: 0.4 }, push: { particles_nb: 4 } }
            },
            retina_detect: true
        });

        window.addEventListener('load', function(){
            const loader = document.querySelector('.loader-wrapper');
            loader.className += ' hidden';
            setTimeout(() => {
                loader.style.display = 'none';
            }, 1000);
        });
    </script>
</body>
</html>
