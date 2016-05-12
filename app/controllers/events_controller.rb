
class EventsController < ApplicationController

  def index
     @events = Event.all
  end

  def search_event
     if params[:search_box] != ''
          # genre = Genre.find(params["search-box"].to_i)
          genre = Genre.find_by(name: params[:search_box])
          if genre != nil
             @events = genre.events
             render :result
          else
            redirect_to '/'
          end
     else
         redirect_to '/'
     end
  end


  def new
    # go to create new form
  end

  def create
    event = Event.new
    event.name = params[:name]
    event.image= params[:image]
    date = params[:date]
    time = params[:time]
    event_time = date + ' ' + time
    event.event_time = event_time
    event.genre_id = params[:genre_id]
    event.venue_id = params[:venue_id]
    event.description = params[:description]
    if event.save
      render :index
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  # def search
  #   @genre = Genre.find(params[:search_box])
  #     @genre.each do |g|
  #       g = Event.find_by(params[:genre_id])
  # end

  def update
    @event = Event.find(params[:id])
    @event.name = params[:name]
    @event.image= params[:image]
    @event.event_time = params[:event_time]
    @event.genre_id = params[:genre_id]
    @event.venue_id = params[:venue_id]
    @event.save
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy

  end

  def near_you

    #RUBY NOT NEEDED AS NOW USING AJAX API REQUEST IN ERB FILE
    # venue = Venue.find_by(name: "Sorry Grandma")
    # @long = venue.longitude
    # @lat = venue.latitude

    # venues = Venue.all
    # venues.each do |venue|
    #   @long = venue.longitude
    #   @lat = venue.latitude
    # end
  end

end
