class NancyatterappsController < ApplicationController
  def top
    session[:nancyatterapp_id] = nil
    session[:menbur_id] = nil
  end

  def new
    @nancyatterapp = Nancyatterapp.new
  end

  def create
    @nancyatterapp = Nancyatterapp.new(nancyatter_params)
    @nancyatterapp.user_id = @current_user.id

    if @nancyatterapp.save
      session[:nancyatterapp_id] = @nancyatterapp.id
      flash.notice = "アプリ作成しました"
      redirect_to posts_top_path(@nancyatterapp.id)
    else
      flash.notice = "入力が正しくありません"
      render ("nancyatterapps/new")
    end
  end

  def admin
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
    @appcategory = Appcategory.find_by(id: @current_app.appcategory_id)
    @postcategory = Postcategory.new
  end

  def update
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
    if @nancyatterapp.update(nancyatter_params)
      flash.notice = "編集しました"
      redirect_to posts_top_path(@nancyatterapp.id)
    else
      flash.notice = "編集できませんでした。"
      redirect_to app_admin_path(current_app.id)
    end
  
  end

  def index
    @nancyatterapps = Nancyatterapp.all.order(created_at: :desc)
  end

  def login
    @nancyatterapp = Nancyatterapp.find_by(id: params[:id])
    session[:nancyatterapp_id] = @nancyatterapp.id
    
    menbur = Menbur.find_by(user_id: @current_user.id, nancyatterapp_id: @nancyatterapp.id)    
    if menbur
      session[:menbur_id] = menbur.id
    end

    redirect_to posts_top_path(@nancyatterapp.id)
  end

  def logout
    session[:nancyatterapp_id] = nil
    session[:menbur_id] = nil
    flash.notice = 'メインアプリに戻りました'
    redirect_to root_path
  end


  private
    def nancyatter_params
      params.require(:nancyatterapp).permit(:app_name, :main_text, :introduction, :loure, :app_image, :app_color, :appcategory_id, :feature_like, :feature_comment, :feature_category, :feature_image) 
    end


end
