class WelcomeController < ApplicationController
  def index

  end

  def send_welcome
    UserMailer.test_email.deliver_now
    flash[:notice]="this bia has been sent homie"
    redirect_to home_path
  end

  def rsvp
    @name = params['name']
    @email =param['email']
    @message = params['message']
  end

end
