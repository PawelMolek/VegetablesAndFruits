class Participant < ApplicationRecord
  # has_many :snacks
  validates :name, presence: true

end
