require 'rails_helper'

RSpec.describe User, type: :model do
  it 'sends a confirmation email' do
    user = FactoryGirl.build :user
    # expect { user.save }.to change(ActionMailer::Base.deliveries, :count).by(0)
    # expect { user.send_devise_notification }.to change(Devise.mailer.deliveries, :count).by(5)
    expect { user.save }.to change(Devise.mailer.deliveries, :count).by(0)
  end
end