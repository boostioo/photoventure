require 'rails_helper'

feature 'Displaying posts' do  
  scenario 'with correct information' do
    FactoryGirl.create(:post, description: "Test one")
    FactoryGirl.create(:post, description: "Test two")

    visit '/'
    expect(page).to have_content("Test one")
    expect(page).to have_content("Test two")
    expect(page).to have_css("img[src*='ror']")
  end
end