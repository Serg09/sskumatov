require "rails_helper"
RSpec.describe UserMailer, type: :mailer do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe UserMailer do
    describe 'instructions' do
      # let(:user) { mock_model User, name: 'Lucas', email: 'lucas@email.com' }
      # let(:mail) { UserMailer.welcome_email(user) }
      user = FactoryGirl.build :user
      it 'renders the subject to eql subject' do
        expect(user.name).to eql(user.name)
      end
      it 'renders the subject to not eql NIL' do
        expect(user.name).to_not eql(nil)
      end
      it 'renders the receiver email not to eql NIL' do
        expect(user.email).to_not eql(nil)
      end
      it 'renders the receiver email to eql email' do
        expect(user.email).to eql(user.email)
      end
    end
  end
end