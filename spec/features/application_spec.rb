require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_link "About"

    expect(page).to have_content "Not much to say here"

    visit "/"

    click_link "New gif"

    fill_in "Url", with: "http://i.imgur.com/pOTYKIX.gif"
    fill_in "Title", with: "Yeah!"

    click_on "Create gif"

    expect(page).to have_content "gif created successfully"
    expect(page).to have_content "Yeah!"
    
    click_link "New gif"

    fill_in "Url", with: ""
    fill_in "Title", with: ""

    click_on "Create gif"

    expect(page).to have_content "Url can't be blank"
    expect(page).to have_content "Title can't be blank"
    expect(page).to have_content "can't be blank"
  end

end
