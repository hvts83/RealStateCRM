class Customer < ApplicationRecord
    has_many :employees, through: :customerappointments, dependent: :destroy

    validates :name, presence: true 
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } # I think RFC 8068                                                         
    validates_format_of :phone, presence: true, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "Number must be XXX-XXX-XXXX"
end
