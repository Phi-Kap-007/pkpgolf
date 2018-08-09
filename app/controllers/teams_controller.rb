class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show

  end

  def new
    @team = Team.new
    @users_without_a_team = User.where(team_id: [nil, @team.id])
  end

  def create
    @team = Team.create!(team_params)

    user_1 = User.find(params[:member_1])
    user_1.team = @team
    user_1.save

    user_2 = User.find(params[:member_2])
    user_2.team = @team
    user_2.save

    user_3 = User.find(params[:member_3])
    user_3.team = @team
    user_3.save

    user_4 = User.find(params[:member_4])
    user_4.team = @team
    user_4.save

    # user_1 = User.find(params[:member_1])
    # user_1 = User.find(params[:member_1])
    # user_1 = User.find(params[:member_1])
    redirect_to teams_path

  end

  def edit
    @users_without_a_team = User.where(team_id: [nil, @team.id])
  end

  def update
    @team.update(team_params)

    @team.users.each do |user|
      user.update(team_id: nil)
    end

    user_1 = User.find(params[:member_1])
    user_1.team = @team
    user_1.save

    user_2 = User.find(params[:member_2])
    user_2.team = @team
    user_2.save

    user_3 = User.find(params[:member_3])
    user_3.team = @team
    user_3.save

    user_4 = User.find(params[:member_4])
    user_4.team = @team
    user_4.save

    redirect_to team_path(@team)
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :tee_off_time)
  end

  def set_team
    @team = Team.find(params[:id])
  end

end
