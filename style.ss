body, html {
  margin: 0;
  padding: 0;
  background-color: #050505;
  color: #ffffff;
  font-family: 'Inter', sans-serif;
  overflow-x: hidden;
}

.video-background {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  z-index: -1;
}

#bg-video {
  width: 100%;
  height: 100%;
  object-fit: cover; /* Wideo zawsze pokrywa cały ekran */
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6); /* Przyciemnienie dla czytelności tekstu */
}

.content {
  position: relative;
  z-index: 1;
}

.step {
  height: 100vh; /* Każda sekcja zajmuje pełny ekran */
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  padding: 0 20px;
}

.hero-text {
  font-size: 4.5rem;
  margin-bottom: 20px;
  opacity: 0; /* Ukryte na start, GSAP to zmieni */
  transform: translateY(50px);
  font-weight: 700;
}

.step p {
  font-size: 1.5rem;
  opacity: 0;
  transform: translateY(50px);
  max-width: 700px;
  line-height: 1.5;
  color: #d1d5db;
}

.cta-button {
  margin-top: 30px;
  padding: 15px 30px;
  background-color: #ffffff;
  color: #000000;
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: bold;
  border-radius: 50px;
  opacity: 0;
  transform: translateY(50px);
  transition: transform 0.3s ease, background-color 0.3s ease;
}

.cta-button:hover {
  background-color: #cccccc;
  transform: scale(1.05) translateY(50px) !important;
}
