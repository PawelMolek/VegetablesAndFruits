class SnackGame < ApplicationRecord
  belongs_to :snack
  belongs_to :game
  # has_many :players
end
