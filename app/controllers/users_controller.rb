class UsersController < ApplicationController
  PER_PAGE = 10

  def index
    @users = User.all.order(:id).page(params[:page]).per(PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
    @time_frames = TimeFrame.all.order(:start_time)
  end
end
