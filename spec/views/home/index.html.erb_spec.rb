require 'rails_helper'

# RSpec.describe "home/index.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

feature 'My Resume Page' do
  scenario 'Index page must have a date' do
    visit '/'
    # click_link 'New Car'
    #
    # fill_in 'Make', with: 'Ford'
    # fill_in 'Model', with: 'Mustang'
    # fill_in 'Year', with: '1969'
    # fill_in 'Price', with: '2300'
    #
    # click_button 'Create Car'
    expect(page).to have_content("2016")
  end

    scenario 'Index page must be html' do
      visit '/'
      expect(page).to have_http_status(:success)
    end

  scenario 'Index page must include css' do
    visit '/'
    page.should have_css('div.site-wrapper')
  end

  scenario 'home page must include link' do
    visit '/'
    expect(page).to have_link('', href: "http://localhost:3000/")
  end
end
