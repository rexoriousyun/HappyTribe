$(function() {
  $('#sorted-bookmarks').sortable({
    containment: 'parent',
    tolerance: 'pointer',
    cursor: 'pointer',
    axis: 'y',
    update: function() {
      $.ajax({
        url: '/bookmarks/sort',
        type: 'post',
        data: $('#bookmarks').sortable('serialize'),
        dataType: 'script',
        complete: function(request){
          $('#bookmarks').effect('highlight');
        }
      });
    }
  });
});