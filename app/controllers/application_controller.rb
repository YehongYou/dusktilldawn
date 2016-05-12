class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def logged_in?
    !!current_user
    # Will return true if there is a user logged in.

  end
  helper_method :logged_in?

  def current_image
    user = User.find_by(id: session[:user_id])
    @current_image = user[:image]
  end
  helper_method :current_image

end
