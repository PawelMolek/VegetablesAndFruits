require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    assign(:player, Player.new(
      name: "MyString",
      points: 1
    ))
  end

  it "renders new players form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input[name=?]", "players[name]"

      assert_select "input[name=?]", "players[points]"
    end
  end
end
