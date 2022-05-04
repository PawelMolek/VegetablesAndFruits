class Game < ApplicationRecord
  validates :game_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :participant_ids, presence: true
  validates :snack_ids, presence: true

  has_many :game_details
  has_many :participants, through: :game_details
  has_many :snacks, through: :game_details
end
