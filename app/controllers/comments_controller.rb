class CommentsController < ApplicationController
  before_action :load_comment, only: [:edit, :update]

  def create
    @comment = Comment.new comment_params

    if @comment.save
      respond_to do |format|
        format.html
        format.js
      end
    else
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  def edit
  end

  def update
    if @comment.update_attributes comment_params
      flash[:success] = "Update comment successfully!"
      redirect_to @comment.post
    else
      flash.now[:danger] = "Update comment failed!"
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit :user_id, :post_id, :content
  end

  def load_comment
    @comment = Comment.find_by id: params[:id]

    redirect_to root_path unless @comment
  end
end
