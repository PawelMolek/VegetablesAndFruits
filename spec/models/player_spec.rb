require 'rails_helper'

RSpec.describe Player, :type => :model do

  context 'validation tests' do

    it "has correct name, point and active values" do
      player = Player.new(name: "name", points: 0, active: true).save
      expect(player).to eq(true)
    end

    it "has too short name" do
      player = Player.new(name: "na", points: 0, active: true).save
      expect(player).to eq(false)
    end

    it "has too long name" do
      player = Player.new(name: "Player Player Player Player Player", points: 0, active: true).save
      expect(player).to eq(false)
    end

    it "has nil value of points" do
      player = Player.new(name: "name", points: nil, active: true).save
      expect(player).to eq(false)
    end

    it "has nil value of active" do
      player = Player.new(name: "name", points: 0, active: nil).save
      expect(player).to eq(false)
    end

    it "has not included point value which should be 0 at defualt" do
      player = Player.new(name: "name", active: true).save
      expect(player).to eq(true)
    end

    it "has not included active value which should be true at default" do
      player = Player.new(name: "name", points: 0).save
      expect(player).to eq(true)
    end

    it "has not included active and points value which should be set by default" do
      player = Player.new(name: "name").save
      expect(player).to eq(true)
    end
  end
end