require 'rails_helper'

feature 'Index displays posts' do  
  scenario 'with correct information' do
    post_one = create(:post, description: "Test one")
    post_two = create(:post, description: "Test two")

    visit '/'
    expect(page).to have_content("Test one")
    expect(page).to have_content("Test two")
    expect(page).to have_css("img[src*='ror']")
  end
end