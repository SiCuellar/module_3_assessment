require 'rails_helper'

describe "user" do
  it "user can see stations within a zip " do
    visit(root_path)

    fill_in :q, with: 80203
    click_button('Locate')

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Stations")
    expect(page).to have_content("Station Name")
    expect(page).to have_content("Station Address")
    expect(page).to have_content("Station Fuel Type")
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
