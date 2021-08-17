class UsersController < ApplicationController
  def signin
    @user = User.new
  end


  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash.notice = "新規登録しました"
      redirect_to root_path      
    else
      render('signin')
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: @current_user.id)
    @menburs = Menbur.where(user_id: @current_user.id)
    # @nancyatterapps = Nancyatterapp.(id: @menburs.app_id)
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
