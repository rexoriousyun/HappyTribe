$(function() {
  $('#sorted-bookmarks').sortable({
    containment: 'parent',
    tolerance: 'pointer',
    cursor: 'pointer',
    axis: 'y',
    update: function() {
    	var data  = $(this).sortable('serialize');
    	$.ajax({
    		data: data,
    		type: 'POST',
    		url: bookmark_update_path
    	});
    }
  });
});