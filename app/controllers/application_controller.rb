class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def liked?(current_stadium)
    if logged_in? 
      !!current_user.likes.find_by(stadium_id: current_stadium)
    end
  end
  helper_method :liked?

  def current_user_name
    User.find_by(id: session[:user_id]).username
  end
  helper_method :current_user_name

end
