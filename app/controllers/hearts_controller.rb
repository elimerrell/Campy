class HeartsController < ApplicationController
  respond_to :js

  def heart
    @user = @current_user
    @comment = Comment.find(params[:comment_id])
    @user.heart!(@comment)
  end

  def unheart
    @user = @current_user
    @heart = @user.hearts.find_by_comment_id(params[:comment_id])
    @post = Comment.find(params[:comment_id])
    @heart.destroy!
  end
end
