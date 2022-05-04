class GameDetail < ApplicationRecord
  belongs_to :game
  belongs_to :participant
  belongs_to :snack
end
