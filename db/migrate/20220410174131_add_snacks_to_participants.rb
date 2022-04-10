class AddSnacksToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_reference :participants, :snacks, foreign_key: true
  end
end
