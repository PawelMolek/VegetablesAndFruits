class Snack < ApplicationRecord
  has_many :snack_games
  has_many :games, through: :snack_games


end
