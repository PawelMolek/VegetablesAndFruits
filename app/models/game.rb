class Game < ApplicationRecord

  validates :game_date, comparison: { greater_than_or_equal_to: Date.today }

  # after_create :assign_snacks_to_players

  has_many :player_games
  has_many :players, through: :player_games

  has_many :snack_games
  has_many :snacks, through: :snack_games

  accepts_nested_attributes_for :snacks

  # assign to every players randomly a snacks included into game
  # def assign_snacks_to_players

    #DEEP INTO CONTROLLER , LOOK AT DOCS OR STACKOVERFLOW HOW TO EDIT NESTED ATTRIBUTES

    # @snacks = self.snack_ids
    # snack = self.snack_ids
    # @players = self.player_ids
    # @players.each do |player|
    #   snack = @snacks.shuffle.first
      # SnackGame.create!(snack_id: snack, player_id: player, game_id: self.id)
    # end
  # end

end
