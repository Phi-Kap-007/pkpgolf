class TeamsController < ApplicationController

  TEAMS = {
    Team_1 => { name: "Golden Oldies", members: ["Chris Mapp", "Mark H.", "Jim Ross", "Bill Gregory"]},
    Team_2 => { name: "SP Caravan", members: ["Christian Chan", "Ardavan Hosseini", "Gianni Macri", "John-Michael Aita"]},
    Team_3 => { name: "Shore Whores", members: ["Troy Huzulak", "Derek Ruediger", "Jared Wielkanoc", "Pat Therrien"]},
    Team_4 => { name: "House Crew", members: ["Bacon Forte", "Grayson Castell", "Jack Tisdell", "Wiliiam Ducasse"]},
    Team_5 => { name: "Middle-Aged", members: ["Carlos Da Costa Frias", "Thomas Dayon", "Trevor Lee", "Fred St-Amour"]},
    Team_6 => { name: "Peter Corrado's Party Foursome", members: ["Alex Corrado", "David Gao", "Michel Toutoungy", "Ryan Kucera"]}
  }

  def index
    @teams = TEAMS
  end
end
