require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do
  feature 'Home page' do
    scenario 'home page must have a name' do
      visit '/static_pages/home'
      expect(page).to have_content("General Information")
    end

    scenario 'home page must be html' do
      visit '/static_pages/home'
      expect(page).to have_http_status(:success)
    end

    # scenario 'home page must include' do
    #   visit '/static_pages/home'
    #   expect(page).to have_link('', href: "app/views/static_pages/home.html.erb")
    # end
  end
end
