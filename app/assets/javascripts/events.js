$(document).on('ready', function() {

  function showEvents() {
    if ($('#events-template').length) {

      $.ajax({
        url: '/api/events'
      }).done(function(events) {

        $.each(events, function(index, event) {
          var template = $('#events-template').html();
          var templateFunction = Handlebars.compile(template);

          if (event.image == undefined) {
            eventImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
          } else {
            eventImage = event.image
          };

          var monthsArr =[ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
          var date = event.event_time;
          console.log(date);
          var string = new Date(date);
          var month = (monthsArr[string.getMonth()]);
          var new_date = (string.getDay()+ " " + month + " " + string.getFullYear()+ ",  " + string.getHours()+ ":" + string.getMinutes());

          var html = templateFunction({
            name: event.name,
            id: event.id,
            type: event.venue.venue_type,
            image_url: eventImage,
            venue: event.venue.name,

            event_time: new_date,
            like_count: event.like_count


          });
          var $newDiv = $(html);
          $('.list-all-events').append($newDiv);




        });
      });
    };
  }

  showEvents();

    //  sort events function
    $('#sortBtn').on('click', function(){
        $('.list-all-events').empty();
        $.ajax({
          url: '/api/events'
        }).done(function(events){
            var orderEvents = _.sortBy(events, 'event_time');

            $.each(orderEvents, function(index, event) {
              var template = $('#events-template').html();
              var templateFunction = Handlebars.compile(template);

              if (event.image == undefined) {
                eventImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
              } else {
                eventImage = event.image
              };

              var monthsArr =[ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
              var date = event.event_time;
              console.log(date);
              var string = new Date(date);
              var month = (monthsArr[string.getMonth()]);
              var new_date = (string.getDay()+ " " + month + " " + string.getFullYear()+ ",  " + string.getHours()+ ":" + string.getMinutes());

              var html = templateFunction({
                name: event.name,
                id: event.id,
                type: event.venue.venue_type,
                image_url: eventImage,
                venue: event.venue.name,
                event_time: new_date,
                like_count: event.like_count
              });

              var $newDiv = $(html);
              $('.list-all-events').append($newDiv);
            });

        })

    });









    $(document).on('click', '.back', function() {
        $('.list').empty();
        showEvents();
    })

});
