class Game < ApplicationRecord
  # validates :game_date, comparison: { greater_than_or_equal_to: Date.today }
  # validates :participant_ids, presence: true
  # validates :snack_ids, presence: true

  has_many :participants
  has_many :snacks
  # belongs_to :participant
end
