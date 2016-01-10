$(function() {
  $('#sorted-bookmarks').sortable({
    containment: 'document',
    tolerance: 'pointer',
    cursor: 'pointer',
    revert: true,
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