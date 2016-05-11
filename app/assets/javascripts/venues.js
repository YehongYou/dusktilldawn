$( document ).on('ready', function() {

  function showVenues() {
    if($('#venues-template').length){

      $.ajax({
        url: 'http://localhost:3000/api/venues'
      }).done(function(venues) {

        $.each(venues, function(index, venue) {
          console.log( $('#venues-template'));
          var template = $('#venues-template').html();
          console.log(template);
          var templateFunction = Handlebars.compile(template);

          if (venue.image == undefined) {
            venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            venueImage = venue.image
          };
          console.log(venue.image);

          var html = templateFunction({
            name: venue.name,
            id: venue.id,
            type: venue.venue_type.toUpperCase(),
            image_url: venueImage,
            suburb: venue.suburd,
            like_count: venue.like_count
          });

          var $newDiv = $(html);
          $('.list').append($newDiv);

        });
      });
    };
  }

  showVenues();

  $('.list').on('click', '.item', function(event) {

    $('.list').empty();
    var $item = $(event.target).closest('.item');
    var venueId = $item.data('venue-id');
    console.log(venueId);

    $.ajax({
      url: 'http://localhost:3000/api/venues/' + venueId
    }).done(function(venue) {
      console.log(venue);

      var template = $('#venue-details-template').html();
      var templateFunction = Handlebars.compile(template);

      if (venue.image == undefined) {
        venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
      } else {
        venueImage = venue.image
      };
      console.log(venue.image);

      var html = templateFunction({
        name: venue.name,
        id: venue.id,
        desc: venue.description,
        type: venue.venue_type.toUpperCase(),
        image_url: venueImage,
        address: venue.address,
        suburb: venue.suburd,
        like_count: venue.like_count
      });

      var $newDiv = $(html);
      $('.list').append($newDiv);

    })
    console.log(this);
  })

  $('.back').on('click', function() {
    $('.list').empty();
    showVenues();
  })

});
