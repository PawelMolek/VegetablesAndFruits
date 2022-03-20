class AddActiveToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :active, :boolean
  end
end
