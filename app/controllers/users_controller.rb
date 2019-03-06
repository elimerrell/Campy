class UsersController < ApplicationController
  def new
    @user = User.new
    render :layout => 'nonav'
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      flash[:notice] = "User successfully created"
      redirect_to home_path
    else
      flash[:notice] = "Something went wrong, please try again"
      redirect_to login_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
