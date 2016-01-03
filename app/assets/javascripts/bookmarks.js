$(function() {
	$('#bookmarks-sorting').sortable({ 
		containment: 'document', 
		tolerance: 'pointer', 
		cursor: 'pointer',
		revert: true,
		axis: 'y'
	});	
});
