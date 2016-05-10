class CommentsController < ApplicationController

  def index
    @comments = Comments.all
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
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

end
