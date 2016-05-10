class UsertypesController < ApplicationController

  def index
    @user_types = Users.all
  end

  def new
  end

  def create
    # post from form
  end

  def show
  end

  def update
  end

  def delete
    @user_type = Event.find(params[:id])
    @user_type.destroy


  end

end
