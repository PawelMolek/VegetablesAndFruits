class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date :game_date, null: false, default: Date.today

      t.timestamps
    end
  end
end
