require "rails_helper"

RSpec.feature "Home Page", :type => :feature do
  scenario "it is a sunny day and we see that" do
    visit "/"

    expect(page).to have_text("Widget was successfully created.")
  end
end