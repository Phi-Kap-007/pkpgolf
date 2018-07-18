# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Team.destroy_all

puts 'Creating teams...'

Team.create(name: "Golden Oldies", member_1: "Chris Mapp", member_2: "Mark Uchwat", member_3: "Jim Ross", member_4: "Bill Gregory", tee_off_time: 930, score: 0)
Team.create(name: "Uchwat Family", member_1: "Unknown 1", member_2: "Unknown 2", member_3: "Unknown 3", member_4: "Unknown 4", tee_off_time: 938, score: 0)
Team.create(name: "The Organizers", member_1: "Arthur Burczak", member_2: "Sebastien Jacques", member_3: "Derek Pickford", member_4: "LJ Aguinaga", tee_off_time: 946, score: 0)
Team.create(name: "Mish-Mash", member_1: "Alex Corrado", member_2: "Carlos Da Costa Frias", member_3: "Cody Lieberman", member_4: "Colin Mackenzie", tee_off_time: 954, score: 0)
Team.create(name: "Order of Former CPA's of Quebec", member_1: "Artour Goldenberg", member_2: "Pascal Karel Matte", member_3: "Cody Lieberman", member_4: "Colin Mackenzie", tee_off_time: 1002, score: 0)
Team.create(name: "SP Caravan", member_1: "Benjamin Mason", member_2: "Ardavan Hosseini", member_3: "Adrian Payne", member_4: "Sajith Rupasingha", tee_off_time: 1010, score: 0)
Team.create(name: "The Swordsmiths", member_1: "Yasin Ismail", member_2: "Alex Le", member_3: "Nicholas Jasinski", member_4: "Alexandre Duchesne", tee_off_time: 1018, score: 0)
Team.create(name: "SP Caravan, The Sequel", member_1: "Andrew Brand", member_2: "Arun Aggarwal-Schifellite", member_3: "Christian Chan", member_4: "Scott McGee", tee_off_time: 1026, score: 0)
Team.create(name: "House Crew", member_1: "James Fraser", member_2: "Ryan Kucera", member_3: "Jack Tisdell", member_4: "William Ducasse", tee_off_time: 1034, score: 0)
Team.create(name: "Alcoholics Anonymous", member_1: "Dario Baccalaro", member_2: "Shane Chappus", member_3: "Noah Gareau", member_4: "N/A", tee_off_time: 1042, score: 0)

puts 'Bro best golf tournament bro!'

# This has the Time zone thing, uncomment when clear
# Team.create(name: "Peter Corrado, Party of 4", members: ["Alex Corrado", "David Gao", "Ryan Kucera", "Michel Toutoungy"], tee_off_time: Time.new(2018, 7, 7, 9, 30, 0), score: 0)
# Team.create(name: "SP Caravan", members: ["Christian Chan", "Ardavan Hosseini", "Gianni Macri", "John-Michael Aita"], tee_off_time: Time.new(2018, 7, 7, 9, 24, 0), score: 0)
# Team.create(name: "Shore Whores", members: ["Troy Huzulak", "Derek Ruediger", "Jared Wielkanoc", "Pat Therrien"], tee_off_time: Time.new(2018, 7, 7, 9, 16, 0), score: 0)
# Team.create(name: "Golden Oldies", members: ["Chris Mapp", "Mark H.", "Jim Ross", "Bill Gregory"], tee_off_time: Time.new(2018, 7, 7, 9, 38, 0), score: 0)
# Team.create(name: "House Crew", members: ["Bacon Forte", "Grayson Castell", "Jack Tisdell", "William Ducasse"], tee_off_time: Time.new(2018, 7, 7, 9, 46, 0), score: 0)
# Team.create(name: "Middle-Aged", members: ["Carlos Da Costa Frias", "Thomas Dayon", "Trevor Lee", "Fred St-Amour"], tee_off_time: Time.new(2018, 7, 7, 9, 54, 0), score: 0)

