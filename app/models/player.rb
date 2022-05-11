class Player < ApplicationRecord
  # after_initialize :assign_snacks

  has_many :player_games
  has_many :games, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

  # def assign_snacks
    # self games.last every time after create game it should randomly assign snacks to player but probably in game model
    # self.games.last.snack_ids = [1,2]
  # end
end
