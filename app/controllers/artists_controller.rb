class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
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
    @artist = Artist.find(params[:id])
    @artist.destroy


  end

end
