class Snack < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: { minimum: 3, maximum: 30}
  validates :points, presence: true, comparison: { greater_than: 0}

  has_many :games
end

