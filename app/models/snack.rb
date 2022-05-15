class Snack < ApplicationRecord
  has_many :snack_games
  has_many :games, through: :snack_games

  #I'm not sure but I need to found a reason why form saves players but snacks not
  # has_many :player_games

  #to zmieniałem wczoraj
  # has_many :players, through: :player_games
end
