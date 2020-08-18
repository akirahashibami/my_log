class VlogsController < ApplicationController

  def create
    @vlog = Vlog.new(vlog_params)
    @vlog.user_id = current_user.id
    @vlog.save
    redirect_to vlog_path(user.id)
  end

  def index
    @vlogs = Vlog.all
  end

  def show
    @vlog = Vlog.find(params[:id])
  end

  def edit
    @vlog = Vlog.find(params[:id])
  end

  def update
    @vlog = Vlog.find(params[:id])
    @vlog.update(vlog_params)
    redirect_to vlog_path(@vlog.id)
  end

  def destroy
    @vlog = Vlog.find(params[:id])
    @vlog.destroy
    redirect_to vlog_path(user.id)
  end

  private

  def vlog_params
    params.require(:vlogs).permit(:title, :introduction)
  end
end
