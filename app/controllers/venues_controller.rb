class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def new
    #new form
  end

  def create
    venue = Venue.new
    venue.name = params[:name]
    venue.address = params[:address]
    venue.suburd = params[:suburd]
    venue.postcode = params[:postcode]
    venue.venue_type = params[:venue_type]
    venue.image = params[:image]
    venue.user_id = current_user.id
    venue.description = params[:description]
    venue.save
    redirect_to "/users/" + venue.user_id.to_s
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.name = params[:name]
    @venue.address = params[:address]
    @venue.suburd = params[:suburd]
    @venue.postcode = params[:postcode]
    @venue.venue_type = params[:venue_type]
    @venue.image = params[:image]
    @venue.description = params[:description]
    @venue.save
    redirect_to "/venues/#{params[:id]}"
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to "/users/" + @venue.user_id.to_s
  end

end
