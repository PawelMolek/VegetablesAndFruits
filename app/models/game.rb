class Game < ApplicationRecord

  validates :game_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :player_ids, presence: true

  after_create :assign_snacks_to_players

  has_many :player_games
  has_many :players, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

  # assign to every player randomly a snacks included into game
  # def assign_snacks_to_players
    # Very important to select here only active players and include 'active' into player table

    # length = (Player.all { |player| player.active? }).count * 2
    # snacks_to_game = (Snack.all { |snack| snack.active? })
    # players_to_game = (Player.all { |player| player.active? })
    # length.times {
    #   snack = (Snack.all { |snack| snack.active?}).shuffle.first
    #   player = (Player.all { |player| player.active?}).shuffle.first
    #   SnackGame.create!(snack_id: snack, player_id:player, game_id: (Game.last))
    # }

    # SnackGame.create!(snack_id: (Snack.all { |snack| snack.active?}).shuffle.first, player_id:(Player.all { |player| player.active?}).shuffle.first , game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 4, player_id: 3, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 3, player_id: 2, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 3, player_id: 1, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 2, player_id: 4, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 2, player_id: 3, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 1, player_id: 2, game_id: 1) #here generate randomly active snack to active player
    # SnackGame.create!(snack_id: 1, player_id: 1, game_id: 1) #here generate randomly active snack to active player
  # end
end
