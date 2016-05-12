$(document).on('ready', function() {

  function showEvents() {
    if ($('#events-template').length) {

      $.ajax({
        url: 'http://localhost:3000/api/events'
      }).done(function(events) {
        console.log('events', events)
        $.each(events, function(index, event) {
          var template = $('#events-template').html();
          console.log(events);
          var templateFunction = Handlebars.compile(template);

          if (event.image == undefined) {
            eventImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            eventImage = event.image
          };

          var html = templateFunction({
            name: event.name,
            id: event.id,
            // type: event.venue.venue_type,
            image_url: eventImage,
            // venue: event.venue.name,
            like_count: event.like_count
          });

          var $newDiv = $(html);
          var $newLink = $("<a />", {
            href : '/events/' + event.id,
            text : "Click for details.."
          });

          $($newDiv).append($newLink);
          $('.list').append($newDiv);

        });
      });
    };
  }

  showEvents();


    // $('.list').on('click', '.item', function(event) {
    //
    //   $('.list').empty();
    //   var $item = $(event.target).closest('.item');
    //   var venueId = $item.data('venue-id');
    //
    //   $.ajax({
    //     url: 'http://localhost:3000/api/venues/' + venueId
    //   }).done(function(venue) {
    //
    //     var template = $('#venue-details-template').html();
    //     var templateFunction = Handlebars.compile(template);
    //
    //     if (venue.image == undefined) {
    //       venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
    //     } else {
    //       venueImage = venue.image
    //     };
    //     console.log(venue.image);
    //
    //     var html = templateFunction({
    //       name: venue.name,
    //       id: venue.id,
    //       desc: venue.description,
    //       type: venue.venue_type.toUpperCase(),
    //       image_url: venueImage,
    //       address: venue.address,
    //       suburb: venue.suburd,
    //       like_count: venue.like_count
    //     });
    //
    //     var $newDiv = $(html);
    //     $('.list').append($newDiv);
    //
    //   })
    //   console.log(this);
    // })

    $(document).on('click', '.back', function() {
        $('.list').empty();
        showEvents();
    })

});
