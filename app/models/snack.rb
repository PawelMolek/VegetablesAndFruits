class Snack < ApplicationRecord
  validates :name, length: {minimum: 3, maximum: 20}
  validates :points, presence: true
  validates :active, presence: true

  has_many :snack_games
  has_many :games, through: :snack_games
end
