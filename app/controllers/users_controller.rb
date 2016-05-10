class EventsController < ApplicationController

  def index
    @users = Events.all
  end

  def new
  end

  def create
    # post from form
  end

  def show
    @user = Event.find(params[:id])
  end

  def update
  end


  def delete
    @user = User.find(params[:id])
    @user.destroy

  end

end
