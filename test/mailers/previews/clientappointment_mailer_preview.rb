# Preview all emails at http://localhost:3000/rails/mailers/clientappointment_mailer
class ClientappointmentMailerPreview < ActionMailer::Preview

    def sample_mail_preview
        Clientappointment.welcome_email(User.first)
      end

end
