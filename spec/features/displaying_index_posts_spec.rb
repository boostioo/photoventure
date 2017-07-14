require 'rails_helper'

feature 'Index displays posts' do  
  scenario 'with correct information' do
    create(:post, description: "Test one")
    create(:post, description: "Test two")

    visit '/'
    expect(page).to have_content("Test one")
    expect(page).to have_content("Test two")
    expect(page).to have_css("img[src*='ror']")
  end
end