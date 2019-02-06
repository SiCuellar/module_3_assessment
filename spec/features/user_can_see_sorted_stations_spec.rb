require 'rails_helper'

describe "user" do
  it "user can see stations by zip " do
    # As a user
    visit(root_path)
    # When I visit "/"

    fill_in :q, with: 80203
    # And I fill in the search form with 80203 (Note: Use the existing search form)
    click_button('Locate')
    # And I click "Locate"
    expect(current_path).to eq(search_path)
    # Then I should be on page "/search"

    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
