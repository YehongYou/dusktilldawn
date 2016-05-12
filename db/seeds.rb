# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# rake db:seed

#=====  test data ========
# clear all data in the database
# keeping this delete order is very important,bec there are FK relationship
   Artist.destroy_all
   Comment.destroy_all
   Event.destroy_all
   Like.destroy_all
   Venue.destroy_all
   User.destroy_all
   UserType.destroy_all
   Genre.destroy_all



#  user_types table
   type = UserType.new
   type.name = 'normal user'
   type.save
   type2 = UserType.new
   type2.name = 'owner'
   type2.save
#  users table
   user = User.new
   user.email = 'dt@gmail.com'
   user.password = '1234'
   user.name = 'dt'
   user.gender = 'male'
   user.image = 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1700/thumb_HEADSHOTS__2001_.jpg'
   user.user_type_id = type.id
   user.save

   user2 = User.new
   user2.email = 'bev@gmail.com'
   user2.password = '1234'
   user2.name = 'bev'
   user2.gender = 'female'
   user2.image = 'http://images.harrods.com/img/content/style-insider/mcm-bebe-boo-lp.jpg?dwn=390px:475px'
   user2.user_type_id = type2.id
   user2.save



#  venuse table
   venue = Venue.new
   venue.name = "Precint Hotel"
   venue.address = "60 Swan St, Cremorne VIC 3121"
   venue.suburd = "Richmond"
   venue.postcode = 3000
   venue.venue_type = 'bar'
   venue.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue.user_id = user.id
   venue.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue.save

   venue2 = Venue.new
   venue2.name = "Precint Hotel"
   venue2.address = "60 Swan St, Cremorne VIC 3121"
   venue2.suburd = "Richmond"
   venue2.postcode = 3000
   venue2.venue_type = 'bar'
   venue2.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue2.user_id = user2.id
   venue2.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue2.save

   venue3 = Venue.new
   venue3.name = "Precint Hotel"
   venue3.address = "60 Swan St, Cremorne VIC 3121"
   venue3.suburd = "Richmond"
   venue3.postcode = 3000
   venue3.venue_type = 'bar'
   venue3.image = 'http://www.buddhabar.com/img/carousel/Slides/Restaurants/Manille/1.jpg'
   venue3.user_id = user2.id
   venue3.description = "Originally established in 1926, the Precinct Hotel today represents the culinary, corporate and
   casual delights that see Melbourne as a stand out international destination for
   visitors and preferred abode for many. Nestled in the heart of Richmond and
   simultaneously catering for a versatile range of occasions, the Precinct Hotel is a
   family owned and operated establishment that offers a warm yet sophisticated
   atmosphere, guaranteed to make any soiree an unforgettable occasion. From intimate
   dining and live entertainment to big screen sporting events over the weekend...
   Precinct Hotel is the place to be in Melbourne"
   venue3.save


   venue4 = Venue.new
   venue4.name = "Sorry Grandma"
   venue4.address ="590 Little Bourke St, Melbourne VIC 3000"
   venue4.suburd = "CBD"
   venue4.postcode = 3000
   venue4.venue_type = 'bar'
   venue4.image = 'http://www.barsandnightclubs.com.au/assets/images/content/club/melbourne//Sorry%20Grandma%20-%20Melbourne%20CBD/Sorry%20Grandma%20-%20Melbourne%20CBD%20-%20Melbourne%20-%20Photo02.jpg'
   venue4.user_id = user2.id
   venue4.description = "Buzzing dance club featuring well-known DJs and themed events in an opulently decorated space."
   venue4.save

   venue5 = Venue.new
   venue5.name = "Lustre Bar"
   venue5.address ="1/252 Flinders Lane, Melbourne VIC 3000"
   venue5.suburd = "CBD"
   venue5.postcode = 3000
   venue5.venue_type = 'bar'
   venue5.image = 'http://www.bestclubsin.com/media/picture/listing/listingimages/image_365.jpg'
   venue5.user_id = user2.id
   venue5.description = "Intimate bar with crimson walls and a chilled vibe, for creative cocktails, desserts and live music."
   venue5.save

   venue6 = Venue.new
   venue6.name = "Berlin Bar"
   venue6.address ="16 Corrs Ln, Melbourne VIC 3000"
   venue6.suburd = "CBD"
   venue6.postcode = 3000
   venue6.venue_type = 'bar'
   venue6.image = 'http://jfkgwl.corednacdn.com/web_images/image_gallery/album5028_39333_berlin-bar-cbd-best-bars-melbourne-cocktail-hidden-laneway-wine-cool-lounge-002.jpg'
   venue6.user_id = user2.id
   venue6.description = "Split-space East/West-themed bar with plush banquettes, bunker-style decor and bathtub tables."
   venue6.save

   venue7 = Venue.new
   venue7.name = "The Alchemist"
   venue7.address ="361 Brunswick St, Fitzroy VIC 3065"
   venue7.suburd = "Fitzroy"
   venue7.postcode = 3065
   venue7.venue_type = 'bar'
   venue7.image = 'http://www.cityfied.com.au/uploads/thealchemistbar-7940.jpg'
   venue7.user_id = user2.id
   venue7.description = "Cocktails and share plates in a lavish space with vintage lounges and black-and-white prints."
   venue7.save

  # genres table


    genre2 = Genre.new
    genre2.name = 'Hip-hop'
    genre2.save

   genre = Genre.new
   genre.name = 'RnB'
   genre.save

   genre3 = Genre.new
   genre3.name = 'Drum n Bass'
   genre3.save

   genre4 = Genre.new
   genre4.name = 'Blues'
   genre4.save

   genre5 = Genre.new
   genre5.name = 'House'
   genre5.save

   genre6 = Genre.new
   genre6.name = 'Rock'
   genre6.save

   genre7 = Genre.new
   genre7.name = 'Jazz'
   genre7.save

   genre8 = Genre.new
   genre8.name = 'Reggae'
   genre8.save

   genre9 = Genre.new
   genre9.name = 'Dub Step'
   genre9.save

   genre10 = Genre.new
   genre10.name = 'Country'
   genre10.save

   genre11 = Genre.new
   genre11.name = 'Indie'
   genre11.save

   genre12 = Genre.new
   genre12.name = 'Pop'
   genre12.save

   genre13 = Genre.new
   genre13.name = 'Trance'
   genre13.save



#  events table
   event = Event.create(name: "Revolver Wednesday",
                        image: "http://paulunderhill.com/wp-content/uploads/2013/01/music-photographer-festival-event-photography_93.jpg",
                        event_time: "2016-6-2 19:12:12",
                        genre_id: genre.id,
                        venue_id: venue.id,
                        description: "Every good week needs a dance break – make yours Revolver Wednesdays. Dan San (aka DJ Danielsan, from Aussie duo Koolism) is boss here, and he'll spin a huge range of dance music and, from time to time, invite special guests up to the decks.
You might intend to stay for a bit of a dance, but time isn't really a thing that exists at Revolver – especially when the tunes are this good. Don't say we didn't warn you.")

   event = Event.create(name: "Revolver Friday",
                       image: "http://www.lasvegasweddingphotographer.net/wp-content/uploads/2014/06/las-vegas-bar-mitzvah-photographer.jpg",
                       event_time: "2016-5-20 18:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id,
                       description: "In need of a mid-week funtime fix?RUM-ble in the Jungle is for you!!!Man-about-town and celebrated vinyl collector Joey Elbows will be there to spin out the tunes")

   event = Event.create(name: "HAAAA Wednesday",
                       image: "http://www.bizbash.com/content/editorial/storyimg/big/spidypreview03.jpg",
                       event_time: "2016-6-1 20:12:12",
                       genre_id: genre2.id,
                       venue_id: venue3.id,
                       description:"Escape the routine of the nine to five with a night party, which, incidentally, goes from nine(pm) to five(am).
Be prepared to sweat the night away to hip-hop grooves from an ever-changing selection of Melbourne DJs. Free entry and $2 pots: sweet deal.")

# artists table
    artist = Artist.new
    artist.name = 'dt'
    artist.gender = 'male'
    artist.image =''
    artist.event_id = ''
    artist.save
