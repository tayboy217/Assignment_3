class UsersController < ApplicationController
  # マイページ
  def show
    @user = User.find(params[:id])
  end
  
  def edit
  end
  
  def index
    @users = User.all
  end
end
