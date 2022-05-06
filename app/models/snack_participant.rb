class SnackParticipant < ApplicationRecord
  belongs_to :snack
  belongs_to :participant
  belongs_to :game
end
