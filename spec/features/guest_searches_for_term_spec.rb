require 'spec_helper'

feature 'guest searches for term' do
  scenario 'search for term without #' do
    visit root_path
    fill_in 'Search term', with: 'ruby'
    click_on 'Submit'
    
    expect(page).to have_content('#ruby')
    expect(page).to have_css("li.result", :count => 15, :text => /#ruby/i)
    expect(current_path).to eq '/searches/ruby'
  end

  scenario 'search for term with #' do
    visit root_path
    fill_in 'Search term', with: '#ruby'
    click_on 'Submit'
    
    expect(page).to have_content('#ruby')
    page.should have_css("li.result", :count => 15, :text => /#ruby/i)
    expect(current_path).to eq '/searches/ruby'
  end

end
