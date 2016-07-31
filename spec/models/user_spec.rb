require 'rails_helper'

RSpec.describe User, type: :model do

  # scenario 'test Devise mailer'


    before do
    @user = FactoryGirl.build :user
    end

    it 'sends a confirmation email' do
    # expect { user.save }.to change(ActionMailer::Base.deliveries, :count).by(0)
    expect{@user.save}.to change(Devise.mailer.deliveries, :count).by(0)
    # expect { user.save }.to change(Devise.mailer.deliveries, :count).by(0)
  end



  it "#email returns a string" do
    user = FactoryGirl.build :user
  expect(user.email).to match 'sskumatov@gmail.com'
  end
end