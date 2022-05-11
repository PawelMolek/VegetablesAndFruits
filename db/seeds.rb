# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Player.create!(name:"Tata")
Player.create!(name:"Mama")
Player.create!(name:"Olaf")
Player.create!(name:"Nikodem")
Snack.create!(name:"Ogórek", points: 7)
Snack.create!(name:"Ziemniak", points: 2)
Snack.create!(name:"Banan", points: 2)
Snack.create!(name:"Pomidor", points: 5)
# Game.create!(game_date: Date.tomorrow, player_ids: [1,2,3,4], snack_ids:[1,2,3,4])
# Game.create!(game_date: Date.today, player_ids: [1,2,3,4])
# Game.create!(game_date: Date.today, player_ids: [1,2,3,4])
# Game.create!(game_date: Date.today, player_ids: [1,2,3,4])