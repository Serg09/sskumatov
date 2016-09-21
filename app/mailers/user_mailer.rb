class UserMailer < ApplicationMailer
  default from: "sergeyskumatov@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "http://www.google.com"
    mail(to: @user.email, subject: "test welcome email")
  end

  "SENDGRID_USERNAME: #{ENV['SENDGRID_USERNAME']}"
  "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}"
end
