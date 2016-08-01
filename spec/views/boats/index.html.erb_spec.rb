require 'rails_helper'

RSpec.describe "boats/index", type: :view do
  before(:each) do
    assign(:boats, [
      Boat.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Boat.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of boats" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
