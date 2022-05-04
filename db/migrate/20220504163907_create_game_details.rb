class CreateGameDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :game_details do |t|
      t.belongs_to :game, index: true, foreign_key: true
      t.belongs_to :participant, index: true, foreign_key: true
      t.belongs_to :snack, index: true, foreign_key: true

      t.timestamps
    end
  end
end
