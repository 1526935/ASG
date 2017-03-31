var map;
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 4.90161044, lng: 114.84766325 },
        zoom: 8
    });
}