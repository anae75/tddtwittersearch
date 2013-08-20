require 'spec_helper'

feature 'guest changes search term' do
  scenario 'change search term' do
    visit root_path
    fill_in 'Search term', with: 'ruby'
    click_on 'Submit'
    #expect(page).to have_content('#ruby')

    fill_in 'Search term', with: 'justin'
    click_on 'Submit'
    
    expect(page).to have_content('#justin')
  
  end
end
