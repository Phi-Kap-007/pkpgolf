# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Database...'
User.destroy_all
Team.destroy_all

puts 'Creating Teams...'

puts 'Creating "Golden Oldies"'
golden_oldies = Team.create!(name: "Golden Oldies", tee_off_time: 930, score: 0)
User.create!(team: golden_oldies, first_name: "Chris", last_name: "Mapp", email: "mappchris@gmail.com", password: "123456")
User.create!(team: golden_oldies, first_name: "Mark", last_name: "Uchwat", email: "uchwatmark@gmail.com", password: "123456")
User.create!(team: golden_oldies, first_name: "Jim", last_name: "Ross", email: "rossjim@gmail.com", password: "123456")
User.create!(team: golden_oldies, first_name: "Bill", last_name: "Gregory", email: "gregbill@gmail.com", password: "123456")

puts 'Creating "Uchwat Family"'
uchwat_family = Team.create!(name: "Uchwat Family", tee_off_time: 938, score: 0)
User.create!(team: uchwat_family, first_name: "Unknown", last_name: "1", email: "unknown1@gmail.com", password: "123456")
User.create!(team: uchwat_family, first_name: "Unknown", last_name: "2", email: "unknown2@gmail.com", password: "123456")
User.create!(team: uchwat_family, first_name: "Unknown", last_name: "3", email: "unknown3@gmail.com", password: "123456")
User.create!(team: uchwat_family, first_name: "Unknown", last_name: "4", email: "unknown4@gmail.com", password: "123456")

puts 'Creating "The Organizers"'
the_organizers = Team.create!(name: "The Organizers", tee_off_time: 946, score: 0)
User.create!(team: the_organizers, first_name: "Arthur", last_name: "Burczak", email: "artyb@gmail.com", password: "123456")
User.create!(team: the_organizers, first_name: "Sébastien", last_name: "Jacques", email: "jacksebs@gmail.com", password: "123456")
User.create!(team: the_organizers, first_name: "Derek", last_name: "Pickford", email: "pickderek@gmail.com", password: "123456")
User.create!(team: the_organizers, first_name: "LJ", last_name: "Aguinaga", email: "aguilj@gmail.com", password: "123456")

puts 'Creating "The 4 C\'s-ons"'
four_cs = Team.create!(name: "The 4 C's-ons", tee_off_time: 954, score: 0)
User.create!(team: four_cs, first_name: "Alex", last_name: "Corrado", email: "corralex@gmail.com", password: "123456")
User.create!(team: four_cs, first_name: "Carlos", last_name: "Da Costa Frias", email: "dcfricarl@gmail.com", password: "123456")
User.create!(team: four_cs, first_name: "Cody", last_name: "Lieberman", email: "liebcod@gmail.com", password: "123456")
User.create!(team: four_cs, first_name: "Colin", last_name: "Mackenzie", email: "mackcolin@gmail.com", password: "123456")

puts 'Creating "Order of Former CPA\'s of Quebec"'
former_cpas = Team.create!(name: "Order of Former CPA's of Quebec", tee_off_time: 1002, score: 0)
User.create!(team: former_cpas, first_name: "Artour", last_name: "Goldenberg", email: "goldenart@gmail.com", password: "123456")
User.create!(team: former_cpas, first_name: "Pascal Karel", last_name: "Matte", email: "mattepascrel@gmail.com", password: "123456")
User.create!(team: former_cpas, first_name: "Kirby", last_name: "Coussa", email: "coussington3@gmail.com", password: "123456")
User.create!(team: former_cpas, first_name: "David J.", last_name: "Stein", email: "steinbrenner@gmail.com", password: "123456")

puts 'Creating "SP Caravan"'
sp_caravan = Team.create!(name: "SP Caravan", tee_off_time: 1010, score: 0)
User.create!(team: sp_caravan, first_name: "Benjamin", last_name: "Mason", email: "masonbenjamin@gmail.com", password: "123456")
User.create!(team: sp_caravan, first_name: "Ardavan", last_name: "Hosseini", email: "hosseidavan@gmail.com", password: "123456")
User.create!(team: sp_caravan, first_name: "Adrian", last_name: "Payne", email: "payndrian@gmail.com", password: "123456")
User.create!(team: sp_caravan, first_name: "Sajith", last_name: "Rupasingha", email: "rouples@gmail.com", password: "123456")

puts 'Creating "The Swordsmiths"'
the_swordsmiths = Team.create!(name: "The Swordsmiths", tee_off_time: 1018, score: 0)
User.create!(team: the_swordsmiths, first_name: "Yasin", last_name: "Ismail", email: "yasinww1@gmail.com", password: "123456")
User.create!(team: the_swordsmiths, first_name: "Alex", last_name: "Le", email: "pylepriv@gmail.com", password: "123456")
User.create!(team: the_swordsmiths, first_name: "Nicholas", last_name: "Jasinski", email: "nickjames@gmail.com", password: "123456")
User.create!(team: the_swordsmiths, first_name: "Alexandre", last_name: "Duchesne", email: "douchesny@gmail.com", password: "123456")

puts 'Creating "SP Caravan, The Sequel"'
caravan_sequel = Team.create!(name: "SP Caravan, The Sequel", tee_off_time: 1026, score: 0)
User.create!(team: caravan_sequel, first_name: "Andrew", last_name: "Brand", email: "brandydrew@gmail.com", password: "123456")
User.create!(team: caravan_sequel, first_name: "Arun", last_name: "Aggarwal-Schifellite", email: "arunforrestarun@gmail.com", password: "123456")
User.create!(team: caravan_sequel, first_name: "Christian", last_name: "Chan", email: "chandlerbingstian@gmail.com", password: "123456")
User.create!(team: caravan_sequel, first_name: "Scott", last_name: "McGee", email: "donttellscotty@gmail.com", password: "123456")

puts 'Creating "House Crew"'
house_crew = Team.create!(name: "House Crew", tee_off_time: 1034, score: 0)
User.create!(team: house_crew, first_name: "James", last_name: "Fraser", email: "strongbacon@gmail.com", password: "123456")
User.create!(team: house_crew, first_name: "Ryan", last_name: "Kucera", email: "hoochiekouchieman@gmail.com", password: "123456")
User.create!(team: house_crew, first_name: "Jack", last_name: "Tisdell", email: "activeprez@gmail.com", password: "123456")
User.create!(team: house_crew, first_name: "William", last_name: "Ducasse", email: "billydeecass@gmail.com", password: "123456")

puts 'Creating "Alcoholics Anonymous"'
alco_anonymous = Team.create!(name: "Alcoholics Anonymous", tee_off_time: 1034, score: 0)
User.create!(team: alco_anonymous, first_name: "Dario", last_name: "Baccalaro", email: "superdariobros@gmail.com", password: "123456")
User.create!(team: alco_anonymous, first_name: "Shane", last_name: "Chappus", email: "shaneyney@gmail.com", password: "123456")
User.create!(team: alco_anonymous, first_name: "Noah", last_name: "Gareau", email: "garnoah@gmail.com", password: "123456")

puts 'Teams Loaded'
puts 'Keep it clean, now come out golfing!'

