class MenbursController < ApplicationController
  def new
    @menbur = Menbur.new
  end

  def create
    @menbur = @current_user.menburs.new(menbur_params)
    @menbur.nancyatterapp_id = @current_app.id

    if @menbur.save
      session[:menbur_id] = @menbur.id
      flash.notice = "新規メンバー登録しました"
      redirect_to posts_top_path(@current_app.id)
    else
      render('menbur_new')
    end
  end

  def index
    @menburs = Menbur.where(nancyatterapp_id: @current_app)
  end

  def show
    @menbur = Menbur.find(params[:id])
    @posts = @menbur.posts.page(params[:page]).per(10)
  end

  def destroy
  end


  private
    def menbur_params
      params.require(:menbur).permit(:nickname, :profile, :icon_image, :profile_image)
    end

end
