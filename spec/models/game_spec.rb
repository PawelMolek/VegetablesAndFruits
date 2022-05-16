require 'rails_helper'

RSpec.describe Game, :type => :model do
  context 'validation tests' do

    it "has correct date" do
      game = Game.new(game_date: Date.tomorrow).save
      expect(game).to eq(true)
    end

    it "has incorrect date" do
      game = Game.new(game_date: Date.yesterday).save
      expect(game).to eq(false)
    end

  end
end