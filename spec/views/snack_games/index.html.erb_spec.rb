require 'rails_helper'

RSpec.describe "snack_games/index", type: :view do
  before(:each) do
    assign(:snack_games, [
      SnackGame.create!(
        snack: nil,
        game: nil
      ),
      SnackGame.create!(
        snack: nil,
        game: nil
      )
    ])
  end

  it "renders a list of snack_games" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
