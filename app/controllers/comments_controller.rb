class CommentsController < ApplicationController
  def create
    #TODO: implement current_image
    @comment = current_image.comments.build(comment_params)
    if @comment.save
      # すぐに反映
    else
      # show error messages
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
