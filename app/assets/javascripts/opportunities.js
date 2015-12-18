$(document).on("ready page:load", function() {
	$('#nearby-search').on('click', function() {
		if ("geolocation" in navigator) {
			navigator.geolocation.getCurrentPosition(success, error);
		}
	});
});

function success(position) {
	var lat = position.coords.latitude
	var lon = position.coords.longitude
	$.ajax({
		url: '/opportunities',
		method: 'get',
		data: {"latitude": lat, "longitude": lon},
		dataType: 'html',
		success: function(data) {
			$('#opportunities-list').html(data);
		}
	});
}

function error(err) {
	console.log('it no work!' + err.message);
}
