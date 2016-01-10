$(document).ready(function() {
  $('.convo-box').on('click', function() {
    window.location.href = $(this).data('url');
  });
});