class UserMailer < ApplicationMailer

  default from: "test@test.com"


  def contactus
    @greating = "Hi!"

    mail to: "to@example.com"
  end


  def newsletter
    @greating = "Hi!"
    mail to: "to@example.com"

  end

  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end


end
