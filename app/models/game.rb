class Game < ApplicationRecord
  has_many :participants
  has_many :snacks
end
