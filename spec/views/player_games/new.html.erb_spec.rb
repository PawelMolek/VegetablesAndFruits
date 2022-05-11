require 'rails_helper'

RSpec.describe "player_games/new", type: :view do
  before(:each) do
    assign(:player_game, PlayerGame.new(
      player: nil,
      game: nil
    ))
  end

  it "renders new player_game form" do
    render

    assert_select "form[action=?][method=?]", player_games_path, "post" do

      assert_select "input[name=?]", "player_game[player_id]"

      assert_select "input[name=?]", "player_game[game_id]"
    end
  end
end
