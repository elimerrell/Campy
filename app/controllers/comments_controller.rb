class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    if logged_in?
      @comment = Comment.new(:facility_id => params[:facility])
    else
      flash[:notice] = 'Please login to make a comment'
      redirect_to login_path
    end
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.valid?
      @comment.save
      flash[:notice] = "Comment successfully created"
      redirect_to facility_path(@comment.facility)
    else
      @facility = @comment.facility
      flash[:notice] = "Something went wrong, please try again"
      redirect_to new_comment_path(:facility => @facility.id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :facility_id, :rating, :title, :comment)
  end
end
