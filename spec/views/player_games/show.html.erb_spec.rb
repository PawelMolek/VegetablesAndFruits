require 'rails_helper'

RSpec.describe "player_games/show", type: :view do
  before(:each) do
    @player_game = assign(:player_game, PlayerGame.create!(
      player: nil,
      game: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
