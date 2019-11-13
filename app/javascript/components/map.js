import mapboxgl from 'mapbox-gl';


const buildMap = (mapDiv) => {
    mapboxgl.accessToken = mapDiv.dataset.apiKey;
    return new mapboxgl.Map({
        container: 'map-places',
        style: 'mapbox://styles/mapbox/streets-v9'
    });  
};


const addMarkersToMap = (map, marker, logo, logo_boolean) => {
    if (logo_boolean) {
      const el = document.createElement('div');
      el.className = 'marker-logo';
      el.style.backgroundImage = `assetUrl('${logo}')`;
      el.style.backgroundSize = 'contain';
      el.style.width = '120px';
      el.style.height = '64px';
      el.style.backgroundRepeat = 'no-repeat';
      new mapboxgl.Marker(el)
        .setLngLat(marker)
        .addTo(map);
  
    } else {
      new mapboxgl.Marker()
        .setLngLat(marker)
        .addTo(map);
    }
  
  };


  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 29 });
  };
  
  const initMapbox = () => {
    const mapDiv = document.getElementById('map-places');
    if (mapDiv) {
        const nodelist = document.querySelectorAll(".card-place-infos");
        const places = Array.from(nodelist);
        const map = buildMap(mapDiv);
        const castle = places.find((place) => { return place.dataset.typeOf === "castle"; });
        const castleMarker = JSON.parse(castle.dataset.markers);
        const church = places.find((place) => { return place.dataset.typeOf === "church"; });
        const churchMarker = JSON.parse(church.dataset.markers);
        // const activePlace = document.querySelector(".card-place-infos .active");
        // const activeMarker = JSON.parse(activePlace.dataset.markers);
        const markers = [churchMarker, castleMarker];
        addMarkersToMap(map, churchMarker, 'church.png', true);
        addMarkersToMap(map, castleMarker, 'castle.png', true);
        // addMarkersToMap(map, activeMarker, '', false);
        fitMapToMarkers(map, markers);
    }
  };

export { initMapbox };





