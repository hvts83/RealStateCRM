require 'test_helper'

class ClientappointmentMailerTest < ActionMailer::TestCase
  def sample_mail_preview
    ExampleMailer.sample_email(User.first)
  end
end
