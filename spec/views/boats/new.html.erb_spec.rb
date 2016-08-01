require 'rails_helper'

RSpec.describe "boats/new", type: :view do
  before(:each) do
    assign(:boat, Boat.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new boat form" do
    render

    assert_select "form[action=?][method=?]", boats_path, "post" do

      assert_select "input#boat_name[name=?]", "boat[name]"

      assert_select "textarea#boat_description[name=?]", "boat[description]"
    end
  end
end
