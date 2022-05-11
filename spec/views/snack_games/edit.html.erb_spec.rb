require 'rails_helper'

RSpec.describe "snack_games/edit", type: :view do
  before(:each) do
    @snack_game = assign(:snack_game, SnackGame.create!(
      snack: nil,
      game: nil
    ))
  end

  it "renders the edit snack_game form" do
    render

    assert_select "form[action=?][method=?]", snack_game_path(@snack_game), "post" do

      assert_select "input[name=?]", "snack_game[snack_id]"

      assert_select "input[name=?]", "snack_game[game_id]"
    end
  end
end
