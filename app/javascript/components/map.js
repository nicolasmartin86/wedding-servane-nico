import mapboxgl from 'mapbox-gl';


const buildMap = (mapDiv) => {
    mapboxgl.accessToken = mapDiv.dataset.apiKey;
    return new mapboxgl.Map({
        container: 'map-places',
        style: 'mapbox://styles/mapbox/streets-v9'
    });  
};


const setPlaceToActive = (div) => {
    div.addEventListener("click", (event) => {
        const nodelistlogo = document.querySelectorAll(".marker-logo");
        const nodelistflat = document.querySelectorAll(".flat-item");
        const logos = Array.from(nodelistlogo);
        const flats = Array.from(nodelistflat);
        const places = [...logos, ...flats];
        const target = event.currentTarget
        target.style.color = 'red';
        const restOfPlaces = places.filter((place) => { return place.innerHTML !== event.currentTarget.innerHTML; });
        restOfPlaces.forEach((rest) => {
            rest.style.color = 'gray';
        });
    });
};

const addMarkersToMap = (map, marker, logo, logo_boolean, price) => {
    if (logo_boolean) {
      const el = document.createElement('div');
      el.className = 'marker-logo';
      let logoHTML = new DOMParser().parseFromString(logo, 'text/html').body.innerHTML;
      el.innerHTML = logoHTML;
      el.style.color = 'gray';
      el.style.fontSize = '32px';

      
      new mapboxgl.Marker(el)
        .setLngLat(marker)
        .addTo(map);
      
      setPlaceToActive(el);
    
    } else {
        const flat = document.createElement('div');
        flat.className = 'flat-item';
        flat.innerHTML = `${price}`;
        flat.style.fontSize = '8px';
        flat.style.padding = '4px';
        flat.style.textAlign = 'center';
        flat.style.backgroundColor = 'white';
        flat.style.color = 'gray';
        flat.style.width = '60px';
        flat.style.height = '32px';
        flat.style.border = '1px solid gray';
        flat.style.borderRadius = '8px';

        
        new mapboxgl.Marker(flat)
            .setLngLat(marker)
            .addTo(map);
        
        setPlaceToActive(flat);
    }
  
  };


  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 30 });
  };
  
  const initMapbox = () => {
    const mapDiv = document.getElementById('map-places');
    if (mapDiv) {
        const nodelistmain = document.querySelectorAll(".card-place");
        const castleCard = Array.from(nodelistmain).find((place) => { return place.querySelector(".card-place-infos").dataset.typeOf === "castle" });
        castleCard.classList.remove("inactive");
        const map = buildMap(mapDiv);
        const nodelist = document.querySelectorAll(".card-place-infos");
        const places = Array.from(nodelist);
        const notFlats = places.filter((place) => { return place.dataset.typeOf !== "flat"; });
        const flats = places.filter((place) => { return place.dataset.typeOf === "flat"; });
        const fitMarkers = [];
        flats.forEach((flat) => {
            const flatMarker = JSON.parse(flat.dataset.markers);
            fitMarkers.push(flatMarker);
            const flatPrice = flat.dataset.price;
            addMarkersToMap(map, flatMarker, ``, false, flatPrice);
        });
        notFlats.forEach((notFlat) => {
            const notFlatMarker = JSON.parse(notFlat.dataset.markers);
            fitMarkers.push(notFlatMarker);
            const notFlatLogo = notFlat.dataset.logo;
            addMarkersToMap(map, notFlatMarker, notFlatLogo, true, '');
        });
        fitMapToMarkers(map, fitMarkers);
    }
  };

export { initMapbox };





