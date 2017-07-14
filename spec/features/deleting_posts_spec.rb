require 'rails_helper'

feature 'Deleting post' do
    scenario 'successfully' do
        FactoryGirl.create(:post, description: "Delete test")
    
        visit "/"
        find(:xpath, "//a[contains(@href,'posts/1')]").click
        click_link 'Delete Post'
    
        expect(page).to have_content("Post deleted.")
    end
end  