require 'rails_helper'

RSpec.describe "boats/edit", type: :view do
  before(:each) do
    @boat = assign(:boat, Boat.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit boat form" do
    render

    assert_select "form[action=?][method=?]", boat_path(@boat), "post" do

      assert_select "input#boat_name[name=?]", "boat[name]"

      assert_select "textarea#boat_description[name=?]", "boat[description]"
    end
  end
end
