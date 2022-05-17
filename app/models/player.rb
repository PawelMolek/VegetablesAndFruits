class Player < ApplicationRecord
  validates :name, length: {minimum: 3, maximum: 20}, uniqueness: true
  validates :points, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :player_games
  has_many :games, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

end
