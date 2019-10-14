require 'rails_helper'

describe 'A User can select a house' do
  scenario 'can see a total of the number of members for that house' do
    visit root_path

    select "Gryffindor", :from => :house
    click_button 'Search For Members'
    expect(current_path).to eq("/search")
  end
  scenario 'can see a list of all members for that house with their name, role, house, and the patronus' do
  end
end


# As a user,
# When I visit "/"
# And I Select "Griffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (18 for Griffindor)
# Then I should see a list of 18 members
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
