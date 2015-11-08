class UserMailer < ApplicationMailer

  default from: "lauren@lauren.mn"


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
#,
    emails= [user.email, "lauren@lauren.mn", "michelle.digregorio23@gmail.com"]

   # mail(:to => user.email, :subject => "You RSVP-ed!") ,
    mail(:to => emails, :subject => "You RSVP-ed!")
  end

  def test_email
   # subject "twerk"
   # recipients "laurendigregorio34@gmail.com"
   # from "lauren@lauren.mn"
   # sent_on Time.now
    mail(:to => "laurendigregorio34@gmail.com", :subject => "Welcome to My Awesome Site", :sent_on => Time.now)
  end

end
