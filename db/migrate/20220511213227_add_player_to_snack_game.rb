class AddPlayerToSnackGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :snack_games, :player, null: false, foreign_key: true
  end
end
