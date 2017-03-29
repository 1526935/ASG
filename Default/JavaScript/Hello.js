var map;
function initmap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 4.8857309, lng: 150.644 },
        zoom: 8
    });
}