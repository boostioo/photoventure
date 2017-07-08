require 'rails_helper.rb'

feature 'A user is able to' do  
  scenario 'create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: 'first junior rails project' 
    click_button 'Create Post'
    
    #spacings for different actions
    expect(page).to have_content('Post created!')
  end
end 