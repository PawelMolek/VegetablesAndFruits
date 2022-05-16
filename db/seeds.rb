# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Player.create!(name:"Tata", points: 0, active:true)
Player.create!(name:"Mama", points: 0, active:true)
Player.create!(name:"Olaf", points: 0,active:true)
Player.create!(name:"Nikodem", points: 0,active:true)
Snack.create!(name:"Ogórek", points: 7, active:true)
Snack.create!(name:"Ziemniak", points: 2, active:true)
Snack.create!(name:"Banan", points: 2, active:true)
Snack.create!(name:"Pomidor", points: 5, active:true)
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
Game.create!(game_date: Date.tomorrow, player_ids: [1, 2, 3, 4])
