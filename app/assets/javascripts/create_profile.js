$( document ).on('ready', function() {

  $('.box1').click(function() {
    $(this).addClass('selected');
    $(this).siblings('.box1').removeClass('selected');

    if ($(this).hasClass('select-typical')) {
      $('.typical-form').addClass('show');
      $('.owner-form').removeClass('show');
      $('.artist-form').removeClass('show');
    } else if ($(this).hasClass('select-owner')) {
      $('.owner-form').addClass('show');
      $('.typical-form').removeClass('show');
      $('.artist-form').removeClass('show');
    } else if ($(this).hasClass('select-artist')) {
      $('.artist-form').addClass('show');
      $('.owner-form').removeClass('show');
      $('.typical-form').removeClass('show');
    }

  });

})
