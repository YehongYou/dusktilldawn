$( document ).on('ready', function() {

  $('.add-venue').click(function() {
    console.log('hello');
    console.log(this);

    if ($('.add-venue-form').hasClass('show')) {
      $('.add-venue-form').removeClass('show');
    } else {
      $('.add-venue-form').addClass('show')
    };

    if ($('.add-event-form').hasClass('show')) {
      $('.add-event-form').removeClass('show');
    };

  });

  $('.add-event').click(function() {
    console.log('hello');
    console.log(this);

    if ($('.add-event-form').hasClass('show')) {
      $('.add-event-form').removeClass('show');
    } else {
      $('.add-event-form').addClass('show')
    };

    if ($('.add-venue-form').hasClass('show')) {
      $('.add-venue-form').removeClass('show');
    };

  });

})
