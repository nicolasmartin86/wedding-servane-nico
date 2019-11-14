const slideCardToNext = () => {
    const nextBtn = document.querySelector(".right-btn-arrow");
    if (nextBtn) {
        nextBtn.addEventListener('click', (event) => {
  
          event.preventDefault();
          const nodelistlogo = document.querySelectorAll(".marker-logo");
          const nodelistflat = document.querySelectorAll(".flat-item");
          const logos = Array.from(nodelistlogo);
          const flats = Array.from(nodelistflat);
          const places = [...logos, ...flats];
          const cards = document.querySelectorAll(".card-place");
          const n = cards.length - 1;
          let i
          cards.forEach( (card, index) => {
              let isCardActive = card.classList.contains("active");
              if (isCardActive && index < n) {
                const previousActivePlace = places.find((place) => { 
                    const previousActiveMarkers = JSON.parse(card.querySelector(".card-place-infos").dataset.markers)
                    return (parseFloat(place.dataset.coordinatesLat) === previousActiveMarkers.lat) && (parseFloat(place.dataset.coordinatesLng) === previousActiveMarkers.lng ) });
                previousActivePlace.style.color = 'gray';
                card.classList.remove("active");
                card.classList.remove("show");
                setTimeout(function() {card.classList.add("inactive")}, 400);
                i = index;
            }
          });
          if (i < n) {
              const activePlace = places.find((place) => { 
                const activeMarkers = JSON.parse(cards[i+1].querySelector(".card-place-infos").dataset.markers)
                return (parseFloat(place.dataset.coordinatesLat) === activeMarkers.lat) && (parseFloat(place.dataset.coordinatesLng) === activeMarkers.lng ) });
              activePlace.style.color = 'red';
              cards[i+1].classList.remove("inactive");
              cards[i+1].classList.add("active");
              setTimeout(function() {cards[i+1].classList.add("show")}, 100);
          };
      });
    }
  };
  
  const slideCardToPrevious = () => {
    const previousBtn = document.querySelector(".left-btn-arrow");
    if (previousBtn) {
        previousBtn.addEventListener('click', (event) => {
  
          event.preventDefault();
          const nodelistlogo = document.querySelectorAll(".marker-logo");
          const nodelistflat = document.querySelectorAll(".flat-item");
          const logos = Array.from(nodelistlogo);
          const flats = Array.from(nodelistflat);
          const places = [...logos, ...flats];
          const cards = document.querySelectorAll(".card-place");
        //   const n = cards.length - 1;
          let i
          cards.forEach( (card, index) => {
              let isCardActive = card.classList.contains("active");
              if (isCardActive && index > 0) {
                const previousActivePlace = places.find((place) => { 
                    const previousActiveMarkers = JSON.parse(card.querySelector(".card-place-infos").dataset.markers)
                    return (parseFloat(place.dataset.coordinatesLat) === previousActiveMarkers.lat) && (parseFloat(place.dataset.coordinatesLng) === previousActiveMarkers.lng ) });
                previousActivePlace.style.color = 'gray';
                card.classList.remove("active");
                card.classList.remove("show");
                setTimeout(function() {card.classList.add("inactive")}, 400);
                i = index;
            }
          });
          if (i > 0) {
              const activePlace = places.find((place) => { 
                const activeMarkers = JSON.parse(cards[i-1].querySelector(".card-place-infos").dataset.markers)
                return (parseFloat(place.dataset.coordinatesLat) === activeMarkers.lat) && (parseFloat(place.dataset.coordinatesLng) === activeMarkers.lng ) });
              activePlace.style.color = 'red';
              cards[i-1].classList.remove("inactive");
              cards[i-1].classList.add("active");
              setTimeout(function() {cards[i-1].classList.add("show")}, 100);
          };
      });
    }
  };

  export { slideCardToNext, slideCardToPrevious };