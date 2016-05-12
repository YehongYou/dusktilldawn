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
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def update
    venue.name = params[:name]
    venue.address = params[:address]
    venue.suburd = params[:suburd]
    venue.postcode = params[:postcode]
    venue.venue_type = params[:venue_type]
    venue.image = params[:image]
    venue.user_id = params[:user_id]
    venue.description = params[:description]
    venue.save
  end

  def destroy
    venue = Venue.find(params[:id])
    venue.destroy
  end

end
