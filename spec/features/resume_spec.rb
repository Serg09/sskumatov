require 'rails_helper'

feature 'My Resume' do
  scenario 'should see my Resume' do
    visit '/'
    # click_link 'New Car'
    # fill_in 'Make', with: 'Ford'
    # fill_in 'Model', with: 'Mustang'
    # fill_in 'Year', with: '1967'
    # fill_in 'Price', with: '2300'
    # save_and_open_page
    # click_button 'Create Car'

    expect(page).to have_content('WELCOME')
  end
end