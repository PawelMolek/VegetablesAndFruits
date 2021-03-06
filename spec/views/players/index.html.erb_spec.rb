require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        name: "Name",
        points: 2
      ),
      Player.create!(
        name: "Name",
        points: 2
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
