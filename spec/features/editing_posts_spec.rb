require 'rails_helper'

feature 'Editing post' do
  before do
    FactoryGirl.create(:post, description: "Edit test")

    visit "/"
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link "Edit Post"
  end

  scenario 'successfully' do
    fill_in 'Description', with: "Test updating post"
    click_button 'Update Post'

    expect(page).to have_content("Post updated.")
  end
end  