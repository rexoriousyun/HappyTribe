$(document).on('ready page:load', function() {
	var canvas = $('#event-map');
	var eventLocation = { lng: canvas.data('longitude'), lat: canvas.data('latitude') };

	var map = new google.maps.Map(canvas[0], {
		center: eventLocation,
		zoom: 14,
	});

	var marker = new google.maps.Marker({
		position: eventLocation,
		map: map,
	});
});