class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def index
    redirect_to 
  end

  def set_current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!@current_user
  end


end
