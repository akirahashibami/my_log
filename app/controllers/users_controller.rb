class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @vlog = Vlog.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def vlogs

  end

  private

  def user_params
    params.require(:user).permit(:user_image, :name, :introduction)
  end

end
