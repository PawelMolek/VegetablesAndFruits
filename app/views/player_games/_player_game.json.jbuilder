json.extract! player_game, :id, :player_id, :game_id, :created_at, :updated_at
json.url player_game_url(player_game, format: :json)
