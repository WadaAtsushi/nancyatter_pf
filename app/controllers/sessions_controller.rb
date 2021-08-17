class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      user.save
      session[:user_id] = user.id
      flash.notice = "ログインしました"
      redirect_to root_path
    else
      flash.notice = "入力内容が間違っています"
      render :new
    end
  end

  def destroy
    if session[:user_id]
      session[:user_id] = nil
      flash.notice = "ログアウトしました"
      redirect_to root_path
    end
  end
end
