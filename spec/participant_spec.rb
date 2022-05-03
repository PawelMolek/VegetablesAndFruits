require 'rails_helper'

RSpec.describe Participant, :type => :model do

  context 'validation tests' do

    it "has correct name" do
      participant = Participant.new(name: "name").save
      expect(participant).to eq(true)
    end

    it "has too short name" do
      participant = Participant.new(name: "na").save
      expect(participant).to eq(false)
    end

    it "has too long name" do
      participant = Participant.new(name: "participantparticipantparticipant").save
      expect(participant).to eq(false)
    end

  end
end