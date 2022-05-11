require 'rails_helper'

RSpec.describe "snacks/index", type: :view do
  before(:each) do
    assign(:snacks, [
      Snack.create!(
        name: "Name",
        points: 2
      ),
      Snack.create!(
        name: "Name",
        points: 2
      )
    ])
  end

  it "renders a list of snacks" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
