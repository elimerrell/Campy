class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
    @comments = @commentable.comments
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    if logged_in?
      @comment = @commentable.comments.new
    else
      flash[:notice] = 'Please login to make a comment'
      redirect_to login_path
    end
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.valid?
      @comment.save
      flash[:notice] = "Comment successfully created"
      # redirect_to facility_path(@comment.facility)
    else
      flash[:notice] = "Something went wrong, please try again"
    end
  end

  private
  def load_commentable
    resource, id = request.path.split("/")[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  def comment_params
    params.require(:comment).permit(:user_id, :commentable_id, :commentable_type, :rating, :title, :comment)
  end
end
