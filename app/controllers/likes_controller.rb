class LikesController < ApplicationController
  @like = Like.new(
    menbur_id: @current_menbur.id,
    post_id: params[:id]
  )
  @like.save
  redirect_to post_show_path(@like.post_id)
end

def destroy
  @like = Like.find_by(
    menbur_id: @current_menbur.id,
    post_id: params[:id]
  )
  @like.destroy
  redirect_to post_show_path(@like.post_id)
end
end
