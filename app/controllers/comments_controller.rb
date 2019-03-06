class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.valid?
      @comment.save
      flash[:notice] = "Comment successfully created"
      redirect_to facility_path(@comment.facility)
    else
      flash[:notice] = "Something went wrong, please try again"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :facility_id, :rating, :title, :comment)
  end
end
