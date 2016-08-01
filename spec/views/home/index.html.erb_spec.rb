require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "displays the boats" do
    @page_title = "Marina Athena"
    @boats = assign(:boats, [
                      Boat.create!(
                        :name => "Name1",
                        :description => "MyText"
                      )
    ])
    render
    assert_select "#boat-#{ @boats[0].id }", 1
  end
end
