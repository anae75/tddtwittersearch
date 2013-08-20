require 'spec_helper'

feature 'guest searches for term' do
  scenario 'search for term' do
    visit root_path
    fill_in 'Search term', with: 'ruby'
    click_on 'Submit'
    
    expect(page).to have_content('#ruby')
  
  end
end
