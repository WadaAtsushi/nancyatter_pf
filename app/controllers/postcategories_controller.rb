class PostcategoriesController < ApplicationController
  def create
    @postcategory = @current_app.postcategories.new(category_params)
    
    if @postcategory.save
      flash.notice = "投稿カテゴリーを追加しました。"
      redirect_to app_admin_path(@current_app.id)
    else
      flash.notice = "カテゴリーを追加できませんでした。"
      redirect_to app_admin_path(@current_app.id)
    end
  end

  def destroy
    @postcategory = Postcategory.find_by(id: params[:postcategory][:id])
    if @postcategory
      @postcategory.destroy
      flash.notice = "カテゴリーを削除しました。"
    end
    redirect_to app_admin_path(@current_app.id)
  end

  private
    def category_params
      params.require(:postcategory).permit(:category_name)
    end

end
