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
  end

  def new

  end

  def create

    puts "Create teams in DB"
  end

  def edit
  end

  def update

  end

  def destroy
  end
end
