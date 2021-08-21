class LikesController < ApplicationController
  def create_psot_show
    @like = Like.new(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.save
    redirect_to post_show_path(@like.post_id)
  end
  
  def destroy_post_show
    @like = Like.find_by(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.destroy
    redirect_to post_show_path(@like.post_id)
  end
#=====================================================
  def create_post_index
    @like = Like.new(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.save
    redirect_to post_index_path(@like.post_id)
  end

  def destroy_post_index
    @like = Like.find_by(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.destroy
    redirect_to post_index_path(@like.post_id)
  end
#======================================================
  def create_menbur_show
    @like = Like.new(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.save
    redirect_to menbur_show_path(@like.menbur_id)
  end

  def destroy_menbur_show
    @like = Like.find_by(
      menbur_id: @current_menbur.id,
      post_id: params[:id]
    )
    @like.destroy
    redirect_to menbur_show_path(@like.menbur_id)
  end
end
