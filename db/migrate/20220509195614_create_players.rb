class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :points, default: 0, null: false
      t.boolean :active, default: true, null: false

      t.timestamps
    end
  end
end
