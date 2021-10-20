class UsersController < ApplicationController
  protect_from_forgery
  # マイページ
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = Book.all
  end
  
  def edit
     @user = User.find(params[:id])
  if @user != current_user
     redirect_to user_path(current_user), alert: "不正なアクセスです。"
  end
  end
  
  def index
    @users = User.all
    @user = current_user
  end
  

private

def user_params
    params.require(:user).permit(:name, :image, :self_introduction)
end
end