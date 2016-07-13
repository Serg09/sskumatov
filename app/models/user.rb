class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :zxcvbnable


  def send_devise_notification(notification, *args)
    devise_mailer.send(notification, self, *args).deliver_later
  end

  def mail(user)
    @user = user
    @url = 'https://limitless-fortress-77954.herokuapp.com/'
    # attachments['Speed OP.docx'] = File.read('app/assets/files/Speed OP.docx')
    # attachments.inline['666.txt'] = File.read('app/assets/files/666.txt')
    # attachments.inline['octocat.png'] = File.read('app/assets/images/octocat.png')
    # mail(to: @user.email,
    #      # bcc: 'info@speedop.com',
    #      bcc: 'sergeyskumatov@aol.com',
    #      subject: 'testing automated email service')
    Mail.deliver do
      to 'example@example.com'
      from 'sender@example.comt'
      subject 'testing send mail'
      body 'Sending email with Ruby through SendGrid!'
    end
  end
end
