class Participant < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 30}
  #include points validation and specs

  has_many :game_details
  has_many :games, through: :game_details
end
