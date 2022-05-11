class CreateSnackGames < ActiveRecord::Migration[7.0]
  def change
    create_table :snack_games do |t|
      t.belongs_to :snack, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
