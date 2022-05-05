# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Participant.create!(name:"Tata")
Participant.create!(name:"Mama")
Snack.create!(name:"Ogórek", points: 7)
Snack.create!(name:"Pomidor", points: 5)
Game.create!(game_date: Date.today, participant_ids: [1,2], snack_ids: [1,2])
Game.create!(game_date: Date.today, participant_ids: [1], snack_ids: [1])
Game.create!(game_date: Date.today, participant_ids: [2], snack_ids: [2])
