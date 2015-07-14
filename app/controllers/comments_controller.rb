class CommentsController < ApplicationController

  def create
    @bout = Bout.find(params[:bout_id])
    @comment = @bout.comments.create(comment_params)
    redirect_to bout_path(@bout)
  end

  def edit
  end

  def new
    @bout = Bout.find(params[:bout_id])
    @comment = @bout.comments.new
  end


  def update
  end

  def destroy
    @bout = Bout.find(params[:bout_id])
    @comment = @bout.comments.find(params[:id])
    @comment.destroy
    redirect_to bout_path(@bout)
  end

private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end

end
