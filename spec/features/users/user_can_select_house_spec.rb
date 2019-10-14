require 'rails_helper'

feature 'A User can select a house' do
  before :each do
    visit root_path
    select "Gryffindor", :from => :house
    click_button 'Search For Members'
  end
  scenario 'can see a total of the number of members for that house' do

    expect(current_path).to eq("/search")
    expect(page).to have_content("Total Gryffindor Members: 18")
    expect(house_list).to have(18).things
  end

  scenario 'can see a list of all members for that house with their name, role, house, and the patronus' do
  end
end

# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
