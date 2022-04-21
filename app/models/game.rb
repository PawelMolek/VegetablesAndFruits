class Game < ApplicationRecord
  after_create :assign_snacks

  has_many :participants do
    def active_participants
      Participant.each do |participant|
        participant if participant.active?
      end
    end
  end

  def assign_snacks

  end
end
