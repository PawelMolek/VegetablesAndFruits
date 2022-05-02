class Snack < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 30}
  validates :points, presence: true, comparison: { greater_than: 0}

  has_many :game_snacks
  has_many :games, through: :game_snacks
end
