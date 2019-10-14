require 'rails_helper'

feature 'A User can select a house' do
  before :each do
    visit root_path
    select "Gryffindor", :from => :house
    click_button 'Search For Members'
    attrs = {
      name: "Hermione Granger",
      house: "Gryffindor",
      role: "student",
      patronus: "otter"
    }

    @member = Member.new(attrs)

  end
  scenario 'can see a total of the number of members for that house' do

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Total Gryffindor Members: 41")
  end

  scenario 'can see a list of all members for that house with their name, role, house, and the patronus' do
    expect(page).to have_content(@member.name)
    expect(page).to have_content(@member.house)
    expect(page).to have_content(@member.role)
    expect(page).to have_content(@member.patronus)
  end
end
