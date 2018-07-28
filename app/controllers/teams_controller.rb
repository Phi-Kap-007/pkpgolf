class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show

  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to teams_path

  end

  def edit

  end

  def update
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :users, :tee_off_time)
  end

  def set_team
    @team = Team.find(params[:id])
  end

end
