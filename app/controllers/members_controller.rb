class UsersController < ApplicationController
  def index
    @users = User.all
    # Create Function that lists users scores: the lowest goes on top.
  end

  def show

  end

  def create
    @user = User.create(user_params)
    redirect_to teams_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
