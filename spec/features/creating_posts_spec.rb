require 'rails_helper.rb'

feature 'Creating posts' do  
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
   
    fill_in 'Description', with: 'nom nom nom #coffeetime' 
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
   
  end
end  