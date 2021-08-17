class CommentsController < ApplicationController
  def create
    @comment = @current_menbur.comments.new(params_comment)

    if @comment.save
      flash.notice = "コメント追加しました。"
      redirect_to post_show_path(@comment.post_id)
    else
      flash.notice = "コメント挿入失敗しました。"
      redirect_to post_show_path(@comment.post_id)
    end
  end

  def destroy
  end

  private
    def params_comment
      params.require(:comment).permit(:comment_text, :post_id)
    end
end
