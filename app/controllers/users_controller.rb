class UsersController < ApplicationController

  def index
    if logged_in?
      @users = User.all
    else
      flash[:notice] = 'You must be logged in to see fellow campers!'
      redirect_to login_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

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
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id]).destroy

      flash[:notice] = "Account deleted"
      redirect_to welcome_path_url
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :status, :user_img, :bio)
  end
end
