class SnackGame < ApplicationRecord
  belongs_to :snack
  belongs_to :game
  belongs_to :player
end
