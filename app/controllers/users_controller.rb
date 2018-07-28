class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show

  end

  def new

  end

  def create
    @user = User.create(user_params)
    redirect_to teams_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
