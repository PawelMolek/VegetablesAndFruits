class Participant < ApplicationRecord
  has_many :game_participants
  has_many :games, through: :game_participants
end
