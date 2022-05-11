require 'rails_helper'

RSpec.describe "snacks/edit", type: :view do
  before(:each) do
    @snack = assign(:snack, Snack.create!(
      name: "MyString",
      points: 1
    ))
  end

  it "renders the edit snack form" do
    render

    assert_select "form[action=?][method=?]", snack_path(@snack), "post" do

      assert_select "input[name=?]", "snack[name]"

      assert_select "input[name=?]", "snack[points]"
    end
  end
end
