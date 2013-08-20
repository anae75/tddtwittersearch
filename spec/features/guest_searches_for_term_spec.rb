require 'spec_helper'

feature 'guest searches for term' do
  scenario 'search for term without #' do
    visit root_path
    fill_in 'Search term', with: 'ruby'
    click_on 'Submit'
    
    expect(page).to have_content('#ruby')
    page.should have_css("li.result", :count => 15, :text => /#ruby/i)
    current_path.should == search_path(:id => 'ruby')
     
  end

  scenario 'search for term with #' do
    visit root_path
    fill_in 'Search term', with: '#ruby'
    click_on 'Submit'
    
    expect(page).to have_content('#ruby')
    page.should have_css("li.result", :count => 15, :text => /#ruby/i)
    current_path.should == search_path(:id => 'ruby')
     
  end

end
