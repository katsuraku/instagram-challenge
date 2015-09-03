class CommentsController < ApplicationController

  before_action :authenticate_user!

  def new
    @picture = Picture.find(params[:picture_id])
    @comment = Comment.new
  end

  def create
    comment = CommentCreator.call(comment_params)
    if comment.save
      redirect_to pictures_path
    else
      render 'new'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy_as current_user
      flash[:notice] = 'Comment deleted successfully'
    else
      flash[:notice] = 'You can only delete comments which you wrote'
    end
    redirect_to pictures_path
  end

  def comment_params
    comment_params = params.require(:comment).permit(:my_comment)
    comment_params[:current_user] = current_user
    comment_params[:picture_id] = params[:picture_id]
    comment_params
  end
end
