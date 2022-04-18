class CreateGame < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :participant_one, null: false, foreign_key: { to_table: :participants }
      t.references :participant_two, null: false, foreign_key: { to_table: :participants }
      t.references :participant_three, null: false, foreign_key: { to_table: :participants }
      t.references :participant_four, null: false, foreign_key: { to_table: :participants }
      t.references :snack_one, null: false, foreign_key: { to_table: :snacks }
      t.references :snack_two, null: false, foreign_key: { to_table: :snacks }
      t.references :snack_three, foreign_key: { to_table: :snacks }
      t.date :game_date
      t.integer :points

      t.timestamps
    end
  end
end
