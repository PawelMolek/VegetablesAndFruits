class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name , presence: true, null: false
      t.integer :points, presence: true, default: 0, null: false
      t.references :game, index: true, foreign_key: true
      t.timestamps
    end
  end
end
