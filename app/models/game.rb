class Game < ApplicationRecord
  # validates :game_date, comparison: { greater_than_or_equal_to: Date.today }
  # validates :participant_ids, presence: true
  # validates :snack_ids, presence: true

  has_many :participant_games
  has_many :participants, through: :participant_games

  #?
  has_many :snack_participants
  has_many :snacks, through: :snack_participants
  # def snacks(participant_id)
  #   snacks.find_by()
  # end
end
