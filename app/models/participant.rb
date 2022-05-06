class Participant < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: { minimum: 3, maximum: 30}
  #include points validation and specs

  has_many :participant_games
  has_many :games, through: :participant_games
end



