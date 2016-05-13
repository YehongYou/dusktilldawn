$( document ).on('ready', function() {

  function showVenues() {
    if($('#venues-template').length){

      $.ajax({
        url: '/api/venues'
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
  };

  showVenues();
  $('.event-item').hide();
  $('.events-part').hide();
  $('.comments-part').hide();
    // =================  leo changed here ========
    console.log('hellho');
  $('.list').on('click', '.list-venue', function(event) {
    console.log('hello');
                         // '.item'
    $('.list').empty();
    // $('.events-list').empty();
    var $item = $(event.target).closest('.item');
    var venueId = $item.data('venue-id');
    console.log(venueId);

    $.ajax({
      url: '/api/venues/' + venueId
    }).done(function(data) {
      console.log(data);  // changed by leo,  below add all data. in the front of venue
               //venue
      var template = $('#venue-details-template').html();
      var templateFunction = Handlebars.compile(template);

      if (data.venue.image == undefined) {
        venueImage = "http://www.molotowcocktail.eu/images/slider-img4.jpg"
      } else {
        venueImage = data.venue.image
      };
      console.log(data.venue.image);

      var html = templateFunction({
        name: data.venue.name,
        id: data.venue.id,
        desc: data.venue.description,
        type: data.venue.venue_type.toUpperCase(),
        image_url: venueImage,
        address: data.venue.address,
        suburb: data.venue.suburd,
        like_count: data.venue.like_count
      });

      var $newDiv = $(html);
      $('.list').append($newDiv);

      //==================show all events of this venue ===================
      $.each(data.events, function(index, event){
          var eventTemplate = Handlebars.compile($('#events-template').html());
          var eventHtml = eventTemplate({
             event_id: event.id,
             event_image: event.image,
             event_name: event.name
          });
          var $newEvent = $(eventHtml);
          $('.events-list').append($newEvent);
      });

        // ==============show all comments of this venue ===================
      $.each(data.comments, function(index, comment){
          var commentTemplate = Handlebars.compile($('#comments-template').html());
          var commentHtml = commentTemplate({
             content: comment.content,
             user_name: comment.user_name
          });
          var $newComment = $(commentHtml);
          $('.comments-list').append($newComment);
      });
       //==================================

    });
    console.log(this);
    $('.event-item').show();
    $('.events-part').show();
    $('.comments-part').show();
  })

   $(document).on('click', '.back', function() {
    $('.list').empty();
    $('.events-list').empty();
    showVenues();
    $('.event-item').hide();
    $('.events-part').hide();
    $('.comments-part').hide();
  });

  // leo =========== add like function =============
  $('.list').on('click','.likeBtn',function(event){
      var $like_count = $(event.target).closest('.venue-details-wrap').find('.like_count');
      var venueId = $(event.target).closest('.item').data('venue-id');
      $.ajax({
        url: '/api/likes',
        data: {venue_id: venueId},
        method: 'post'
      }).done(function(data){
         $like_count.html(data.like_count);
      })
  });

  // ==================== add comment function =============
    $('.postBtn').on('click',function(){
       var venueId = $('.item-detail').data('venue-id');
       if ($('#input_comment').val() != '') {
           $.ajax({
             url: '/api/comments',
             method: 'post',
             data: {content: $('#input_comment').val(), venue_id: venueId }
           }).done(function(response){
             console.log('add successful');
             var commentTemplate = Handlebars.compile($('#comments-template').html());
             var commentHtml = commentTemplate({
                content: response.comment.content,
                user_name: response.user.name
             });
             var $newComment = $(commentHtml);
             $('.comments-list').append($newComment);
             $('#input_comment').val('');
           })
       }
    })
  //==========================================================
});
