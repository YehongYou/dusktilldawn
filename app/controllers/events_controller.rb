class EventsController < ApplicationController

  def index
    @events = Events.all
  end

  def new
  end

  def create
    # post from form
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
  end

  def delete
    @event = Event.find(params[:id])
    @event.destroy

  end

end
