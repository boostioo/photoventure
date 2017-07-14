require 'rails_helper.rb'

feature 'Creating new posts' do  
  scenario 'with valid attributes' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/ror.png")
    fill_in 'Description', with: 'Junior Rails Project' 
    click_button 'Create Post'
    
    expect(page).to have_content('Junior Rails Project')
  end
  
   scenario 'when providing invalid attributes' do
    visit '/'
    click_link 'New Post'
    click_button 'Create Post'

    expect(page).to have_content 'Post not created.'
  end
  
  it 'needs an image to create a post' do  
  visit '/'
  click_link 'New Post'
  fill_in 'Description', with: "no image"
  click_button 'Create Post'
  
  expect(page).to have_content('Post not created.')
  end
end  


