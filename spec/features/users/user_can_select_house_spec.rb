require 'rails_helper'

feature 'A User can select a house' do
  before :each do
    visit root_path
    select "Gryffindor", :from => :house
    click_button 'Search For Members'
    member = Member.new(@name: "Hermione Granger", @house: )
  end
  scenario 'can see a total of the number of members for that house' do

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Total Gryffindor Members: 41")
  end

  scenario 'can see a list of all members for that house with their name, role, house, and the patronus' do
    expect(page).to have_content(member.name)
  end
end

# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
