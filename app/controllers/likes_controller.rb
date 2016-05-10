class LikesController < ApplicationController

  def index
    @likes = Likes.all
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
    @like = Like.find(params[:id])
    @like.destroy
  end

end
