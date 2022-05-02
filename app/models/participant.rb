class Participant < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 30}

  has_many :game_participants
  has_many :games, through: :game_participants
end
