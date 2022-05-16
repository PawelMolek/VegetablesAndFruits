class CreateSnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks do |t|
      t.string :name, null: false
      t.integer :points, default: 0
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
