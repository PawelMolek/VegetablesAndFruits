require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      name: "MyString",
      points: 1
    ))
  end

  it "renders the edit players form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input[name=?]", "players[name]"

      assert_select "input[name=?]", "players[points]"
    end
  end
end
