class CreateSnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks do |t|
      t.string :title, presence: true, null: false
      t.integer :points, presence: true, default: 0
      t.boolean :active, presence: true, default: true

      t.timestamps
    end
  end
end
