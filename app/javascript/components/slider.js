const slideToNext = () => {
    const nextBtn = document.querySelectorAll(".next-btn");
    if (nextBtn) {
      nextBtn.forEach(btn => {
        btn.addEventListener('click', (event) => {
  
          event.preventDefault();
          const sliders = document.querySelectorAll(".slider-guests");
          let i
          sliders.forEach( (slider, index) => {
            let slideActive = slider.classList.contains("active-slide");
            if (slideActive) {
              slider.classList.remove("active-slide");
              slider.classList.remove("show");
              setTimeout(function() {slider.classList.add("hidden-slide")}, 400);
              i = index;
            }
          });
          sliders[i+1].classList.remove("hidden-slide");
          sliders[i+1].classList.add("active-slide");
          setTimeout(function() {sliders[i+1].classList.add("show")}, 100);
        });
      })
    }
  };
  
  const slideToPrevious = () => {
    const previousBtn = document.querySelectorAll(".previous-btn");
    if (previousBtn) {
      previousBtn.forEach(btn => {
        btn.addEventListener('click', (event) => {
  
          event.preventDefault();
          const sliders = document.querySelectorAll(".slider-guests");
          let i
          sliders.forEach( (slider, index) => {
            let slideActive = slider.classList.contains("active-slide");
            if (slideActive) {
              slider.classList.remove("active-slide");
              slider.classList.remove("show");
              setTimeout(function() {slider.classList.add("hidden-slide")}, 400);
              i = index;
            }
          });
          sliders[i-1].classList.remove("hidden-slide");
          sliders[i-1].classList.add("active-slide");
          setTimeout(function() {sliders[i-1].classList.add("show")}, 200);
        });
      })
    }
  };

  export { slideToNext, slideToPrevious };