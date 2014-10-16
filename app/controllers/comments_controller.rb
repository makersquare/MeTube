class CommentsController < ApplicationController
  def create
    video = Video.find(params[:video_id])
    video.comments.create(comment_params)
    render nothing: true
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/videos/" + params[:video_id].to_s
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
