class TeamsController < ApplicationController

# Put teams in Database when the time is right

  TEAMS = {
    1 => { name: "Golden Oldies", members: ["Chris Mapp", "Mark H.", "Jim Ross", "Bill Gregory"]},
    2 => { name: "SP Caravan", members: ["Christian Chan", "Ardavan Hosseini", "Gianni Macri", "John-Michael Aita"]},
    3 => { name: "Shore Whores", members: ["Troy Huzulak", "Derek Ruediger", "Jared Wielkanoc", "Pat Therrien"]},
    4 => { name: "House Crew", members: ["Bacon Forte", "Grayson Castell", "Jack Tisdell", "William Ducasse"]},
    5 => { name: "Middle-Aged", members: ["Carlos Da Costa Frias", "Thomas Dayon", "Trevor Lee", "Fred St-Amour"]},
    6 => { name: "Peter Corrado's Party of 4", members: ["Alex Corrado", "David Gao", "Michel Toutoungy", "Ryan Kucera"]}
  }

  def index
    # Go to video around 1:09.00 mark, having issues getting the form to work properly
    @teams = TEAMS
    # .select do |id, team|
    #   team[:members] == params [:member_name]
    # end
  end

  def show
    # Uncomment once you understand the Params shit
    # @team = TEAMS[params[:id].to_i]
  end

  def create

    puts "Create teams in DB"
  end
end
