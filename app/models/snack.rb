class Snack < ApplicationRecord
  has_many :game_snacks
  has_many :games, through: :game_snacks
end
