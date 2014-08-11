require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_link "About"

    expect(page).to have_content "Not much to say here"

    visit "/"

    click_link "New gif"

    fill_in "Url", with: "http://gph.is/XKMKQM"
    fill_in "Title", with: "Yeah!"

    click_on "Create gif"

    expect(page).to have_content "gif created successfully"

  end

end
