class Employee < ApplicationRecord
    has_secure_password

    has_many :clients, through: :clientappointments
    has_many :customers, through: :customerappointments
    has_many :clientappointments
    has_many :customerappointments

    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } # I think RFC 8068            
    validates_format_of :phone, presence: true, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "Number must be XXX-XXX-XXXX format."
end 