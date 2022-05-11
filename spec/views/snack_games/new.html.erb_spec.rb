require 'rails_helper'

RSpec.describe "snack_games/new", type: :view do
  before(:each) do
    assign(:snack_game, SnackGame.new(
      snack: nil,
      game: nil
    ))
  end

  it "renders new snack_game form" do
    render

    assert_select "form[action=?][method=?]", snack_games_path, "post" do

      assert_select "input[name=?]", "snack_game[snack_id]"

      assert_select "input[name=?]", "snack_game[game_id]"
    end
  end
end
