class Game < ApplicationRecord
  # after_create :assign_snacks_to_players

  has_many :player_games
  has_many :players, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

  # assign to every player randomly a snacks included into game
  # def assign_snacks_to_players
    # self.players.last.snacks = [1,2]
    # self.players.each do |player|
    #   player.snack_ids = [1,2]
    # end
  # end

end
