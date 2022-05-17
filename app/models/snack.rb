class Snack < ApplicationRecord
  validates :name, length: {minimum: 3, maximum: 20}, uniqueness: true
  validates :points, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :snack_games
  has_many :games, through: :snack_games
end
