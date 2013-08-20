require 'spec_helper'

feature 'guest visits home page' do
  scenario 'visit home page' do
    visit root_path

    expect(page).to have_content('search twitter here')
    expect(page).to have_css('input.search_term')
  end
end
