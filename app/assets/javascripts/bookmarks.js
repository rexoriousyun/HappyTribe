$(function() {
  $('#sorted-bookmarks').sortable({
    containment: 'parent',
    tolerance: 'pointer',
    cursor: 'pointer',
    axis: 'y'
  });
});