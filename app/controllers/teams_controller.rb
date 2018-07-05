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

  end

  def edit
    @team = Team.find(params[:id])
  end

  def update

  end

  def destroy
  end
end
