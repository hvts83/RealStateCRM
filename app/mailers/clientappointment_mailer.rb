class ClientappointmentMailer < ApplicationMailer
 
  def welcome_email(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to MilkCRM')
  end
end
