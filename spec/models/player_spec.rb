require 'rails_helper'

RSpec.describe Player, :type => :model do

  context 'validation tests' do

    it "has correct name, point and active values" do
      participant = Player.new(name: "name", points: 0, active: true).save
      expect(participant).to eq(true)
    end

    it "has too short name" do
      participant = Player.new(name: "na", points: 0, active: true).save
      expect(participant).to eq(false)
    end

    it "has too long name" do
      participant = Player.new(name: "participantparticipantparticipant", points: 0, active: true).save
      expect(participant).to eq(false)
    end

    it "has nil value of points" do
      participant = Player.new(name: "name", points: nil, active: true).save
      expect(participant).to eq(false)
    end

    it "has nil value of active" do
      participant = Player.new(name: "name", points: 0, active: nil).save
      expect(participant).to eq(false)
    end

    it "has not included point value which should be 0 at defualt" do
      participant = Player.new(name: "name", active: true).save
      expect(participant).to eq(true)
    end

    it "has not included active value which should be true at default" do
      participant = Player.new(name: "name", points: 0).save
      expect(participant).to eq(true)
    end

    it "has not included active and points value which should be set by default" do
      participant = Player.new(name: "name").save
      expect(participant).to eq(true)
    end
  end
end