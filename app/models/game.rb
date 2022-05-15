class Game < ApplicationRecord
  after_create :assign_snacks_to_players

  has_many :player_games
  has_many :players, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games
  # has_many :snacks
  # assign to every player randomly a snacks included into game
  def assign_snacks_to_players
    # Very important to select here only active players and include 'active' into player table

    SnackGame.create!(snack_id: 4, player_id: 4, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 4, player_id: 3, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 3, player_id: 2, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 3, player_id: 1, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 2, player_id: 4, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 2, player_id: 3, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 1, player_id: 2, game_id: 1) #here generate randomly active snack to active player
    SnackGame.create!(snack_id: 1, player_id: 1, game_id: 1) #here generate randomly active snack to active player
  end

end
