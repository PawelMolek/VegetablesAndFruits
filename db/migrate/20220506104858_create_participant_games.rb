class CreateParticipantGames < ActiveRecord::Migration[7.0]
  def change
    create_table :participant_games do |t|
      t.belongs_to :game, index: true
      t.belongs_to :participant, index: true
      t.timestamps
    end
  end
end
