class AddNumberToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :game_date, :date, null: false
  end
end
