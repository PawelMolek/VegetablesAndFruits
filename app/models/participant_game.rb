class ParticipantGame < ApplicationRecord
  belongs_to :game
  belongs_to :participant

end
