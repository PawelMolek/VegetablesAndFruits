# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Participant.create!(name:"Tata")
Participant.create!(name:"Mama")
Participant.create!(name:"Olaf")
Participant.create!(name:"Nikodem")
Snack.create!(name:"Ogórek", points: 7)
Snack.create!(name:"Ziemniak", points: 2)
Snack.create!(name:"Banan", points: 2)
Snack.create!(name:"Pomidor", points: 5)
Game.create!(game_date: Date.today, participant_ids: [1,2,3,4])
Game.create!(game_date: Date.today, participant_ids: [1,2,3,4])
Game.create!(game_date: Date.today, participant_ids: [1,2,3,4])
Game.create!(game_date: Date.today, participant_ids: [1,2,3,4])
SnackParticipant.create!(snack_id: 1, participant_id: 1, game_id: 1)
SnackParticipant.create!(snack_id: 2, participant_id: 1, game_id: 1)
SnackParticipant.create!(snack_id: 3, participant_id: 2, game_id: 1)
SnackParticipant.create!(snack_id: 1, participant_id: 2, game_id: 1)
SnackParticipant.create!(snack_id: 4, participant_id: 3, game_id: 1)
SnackParticipant.create!(snack_id: 2, participant_id: 3, game_id: 1)
SnackParticipant.create!(snack_id: 1, participant_id: 4, game_id: 1)
SnackParticipant.create!(snack_id: 3, participant_id: 4, game_id: 1)
