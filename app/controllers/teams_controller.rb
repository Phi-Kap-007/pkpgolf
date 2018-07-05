class TeamsController < ApplicationController

# Put teams in Database when the time is right

  # TEAMS = {

  # }

  def index
    @teams = Team.all
  end

  def show
    # Uncomment once you understand the Params shit
    # @team = TEAMS[params[:id].to_i]
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    Team.create(team_params)
    redirect_to teams_path
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
  end

  private

  def team_params
    params.require(:team).permit(:name, :members, :tee_off_time)
  end

end
