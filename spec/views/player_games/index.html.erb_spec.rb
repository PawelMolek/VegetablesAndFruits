require 'rails_helper'

RSpec.describe "player_games/index", type: :view do
  before(:each) do
    assign(:player_games, [
      PlayerGame.create!(
        player: nil,
        game: nil
      ),
      PlayerGame.create!(
        player: nil,
        game: nil
      )
    ])
  end

  it "renders a list of player_games" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
