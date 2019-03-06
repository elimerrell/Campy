class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to home_path
    else
      flash[:notice] = 'Invalid Username'
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to welcome_path_url
  end

end
