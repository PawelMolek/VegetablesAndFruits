require 'rails_helper'

RSpec.describe Snack, :type => :model do

  context 'validation tests' do

    it "has correct name, point and active values" do
      snack = Snack.new(name: "name", points: 0, active: true).save
      expect(snack).to eq(true)
    end

    it "has too short name" do
      snack = Snack.new(name: "na", points: 0, active: true).save
      expect(snack).to eq(false)
    end

    it "has too long name" do
      snack = Snack.new(name: "Snack Snack Snack SNack Snack Snack", points: 0, active: true).save
      expect(snack).to eq(false)
    end

    it "has nil value of points" do
      snack = Snack.new(name: "name", points: nil, active: true).save
      expect(snack).to eq(false)
    end

    it "has nil value of active" do
      snack = Snack.new(name: "name", points: 0, active: nil).save
      expect(snack).to eq(false)
    end

    it "has not included point value which should be 0 at defualt" do
      snack = Snack.new(name: "name", active: true).save
      expect(snack).to eq(true)
    end

    it "has not included active value which should be true at default" do
      snack = Snack.new(name: "name", points: 0).save
      expect(snack).to eq(true)
    end

    it "has not included active and points value which should be set by default" do
      snack = Snack.new(name: "name").save
      expect(snack).to eq(true)
    end

    it "has not uniq name" do
      snack = Snack.new(name: "name").save
      snack1 = Snack.new(name: "name").save
      expect(snack1).to eq(false)
    end

  end
end