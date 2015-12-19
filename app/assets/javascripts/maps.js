$(document).on('ready page:load', function() {
	var canvas = $('#event-map');
		eventLocation = { lng: canvas.data('longitude'), lat: canvas.data('latitude'
	)};

	var map = new google.maps.Map(canvas[0], {
		center: { lng: canvas.data('longitude'), lat: canvas.data('latitude')},
		zoomlevel: 8
	});

	var maker = new google.map.Marker({
		position: eventLocation;
		map: map;
	});
});