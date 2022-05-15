# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Player.create!(name:"Tata", active:true)
Player.create!(name:"Mama", active:true)
Player.create!(name:"Olaf", active:true)
Player.create!(name:"Nikodem", active:true)
Snack.create!(name:"Ogórek", points: 7, active:true)
Snack.create!(name:"Ziemniak", points: 2, active:true)
Snack.create!(name:"Banan", points: 2, active:true)
Snack.create!(name:"Pomidor", points: 5, active:true)
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
# Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
# SnackGame.create!(game_id:1, player_id:1, snack_id:1)
# SnackGame.create!(game_id:1, player_id:1, snack_id:2)
# SnackGame.create!(game_id:1, player_id:2, snack_id:2)
# SnackGame.create!(game_id:1, player_id:3, snack_id:2)
# SnackGame.create!(game_id:1, player_id:4, snack_id:3)
# SnackGame.create!(game_id:1, player_id:3, snack_id:4)
