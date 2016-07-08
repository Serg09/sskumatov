require 'rails_helper'

# RSpec.describe "home/index.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

feature 'My Resume Page' do
  scenario 'page must have a name' do
    visit '/'

    # click_link 'New Car'
    #
    # fill_in 'Make', with: 'Ford'
    # fill_in 'Model', with: 'Mustang'
    # fill_in 'Year', with: '1969'
    # fill_in 'Price', with: '2300'
    #
    # click_button 'Create Car'

    expect(page).to have_content("Find me")
    # expect(page-header).to have_content("$rrrr")
  end
  end