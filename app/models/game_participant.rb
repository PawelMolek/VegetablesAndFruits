class GameParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :game
end