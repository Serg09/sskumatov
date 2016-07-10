require 'rails_helper'

RSpec.describe "static_pages/about.html.erb", type: :view do

  feature 'About page' do
    scenario 'about page must have a name' do
      visit '/static_pages/about'
      expect(page).to have_content("Sergey M Skumatov")
    end

    scenario 'about page must be html' do
      visit '/static_pages/about'
      expect(page).to have_http_status(:success)
    end
  end
end


