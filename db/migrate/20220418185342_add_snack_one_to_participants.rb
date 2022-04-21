class AddSnackOneToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_reference :participants, :snacks, foreign_key: { to_table: :snacks }
  end
end
