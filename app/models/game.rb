class Game < ApplicationRecord

  validates :game_date, comparison: { greater_than_or_equal_to: Date.today }

  after_create :assign_snacks_to_players

  has_many :player_games
  has_many :players, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

  # assign to every player randomly a snacks included into game
  def assign_snacks_to_players
    # Very important to select here only active players and include 'active' into player table

    @snacks = Snack.all { |snack| snack if snack.active? }
    @players = Player.all { |player| player if player.active? }
    length_of_game = (@players.length) * 2
    length_of_game.times do |game|
      player = @players.shuffle.first[:id]
      snack = @snacks.shuffle.first[:id]
      SnackGame.create!(snack_id: snack, player_id: player, game_id: self.id)
    end
  end
end
