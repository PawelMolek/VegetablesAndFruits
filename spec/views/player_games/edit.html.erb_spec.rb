require 'rails_helper'

RSpec.describe "player_games/edit", type: :view do
  before(:each) do
    @player_game = assign(:player_game, PlayerGame.create!(
      player: nil,
      game: nil
    ))
  end

  it "renders the edit player_game form" do
    render

    assert_select "form[action=?][method=?]", player_game_path(@player_game), "post" do

      assert_select "input[name=?]", "player_game[player_id]"

      assert_select "input[name=?]", "player_game[game_id]"
    end
  end
end
