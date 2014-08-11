require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_link "About"

    expect(page).to have_content "Not much to say here"

    visit "/"

    click_link "New gif"
  end
end
