$(document).ready(function() {
  $('.js-login-btn').click(function(event) {
    event.preventDefault();
    $('.login-popup-wrap').toggle();
  });
})
