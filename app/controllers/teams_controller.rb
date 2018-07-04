class TeamsController < ApplicationController

# Put teams in Database when the time is right

  # TEAMS = {
  #   1 => { name: "Golden Oldies", members: ["Chris Mapp", "Mark H.", "Jim Ross", "Bill Gregory"]},
  #   2 => { name: "SP Caravan", members: ["Christian Chan", "Ardavan Hosseini", "Gianni Macri", "John-Michael Aita"]},
  #   3 => { name: "Shore Whores", members: ["Troy Huzulak", "Derek Ruediger", "Jared Wielkanoc", "Pat Therrien"]},
  #   4 => { name: "House Crew", members: ["Bacon Forte", "Grayson Castell", "Jack Tisdell", "William Ducasse"]},
  #   5 => { name: "Middle-Aged", members: ["Carlos Da Costa Frias", "Thomas Dayon", "Trevor Lee", "Fred St-Amour"]},
  #   6 => { name: "Peter Corrado's Party of 4", members: ["Alex Corrado", "David Gao", "Michel Toutoungy", "Ryan Kucera"]}
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
