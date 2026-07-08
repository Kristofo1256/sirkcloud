// Rejestracja wtyczki ScrollTrigger
gsap.registerPlugin(ScrollTrigger);

// Pobieramy wszystkie sekcje z klasą .step
const steps = gsap.utils.toArray('.step');

steps.forEach((step, i) => {
  // Dla każdej sekcji pobieramy jej elementy
  const elementsToAnimate = step.querySelectorAll('.hero-text, p, .cta-button');

  // 1. Animacja wejścia (pojawianie się podczas scrolla w dół)
  gsap.to(elementsToAnimate, {
    y: 0,
    opacity: 1,
    duration: 1,
    stagger: 0.2, // Kolejne elementy pojawiają się z delikatnym opóźnieniem
    scrollTrigger: {
      trigger: step,
      start: "top 75%", // Animacja zaczyna się gdy góra sekcji minie 75% wysokości ekranu
      end: "top 30%",
      scrub: 1, // Oznacza "kinowość" - animacja podąża za kółkiem myszy
    }
  });

  // 2. Animacja wyjścia (znikanie i powiększanie przy dalszym scrollu)
  // Pomijamy ostatnią sekcję z przyciskiem, by nie znikała, gdy dotrzemy na dół strony
  if (i !== steps.length - 1) {
    gsap.to(elementsToAnimate, {
      scale: 1.2,
      opacity: 0,
      scrollTrigger: {
        trigger: step,
        start: "top -10%",
        end: "bottom top",
        scrub: 1,
      }
    });
  }
});