class Game < ApplicationRecord
  validates :game_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :participant_ids, presence: true

  has_many :game_participants
  has_many :participants, through: :game_participants
end
