class CreateGame < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :participants, null: false, foreign_key: { to_table: :participants }
      t.date :game_date
      t.integer :points

      t.timestamps
    end
  end
end
