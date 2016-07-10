require 'rails_helper'

RSpec.describe "static_pages/contact.html.erb", type: :view do

  feature 'Contact page' do
    scenario 'contact page must have email' do
      visit '/static_pages/contact'
      expect(page).to have_content("sskumatov@gmail.com")
    end

    scenario 'contact page must be html' do
      visit '/static_pages/contact'
      expect(page).to have_http_status(:success)
    end

    scenario 'contact page must include a link' do
      visit '/static_pages/contact'
      expect(page).to have_link('', href: "https://github.com/Serg09")
    end
  end
end
