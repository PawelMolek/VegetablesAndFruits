class Participant < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: { minimum: 3, maximum: 30}
  #include points validation and specs

  has_many :games
  has_many :snacks, through: :games
end



