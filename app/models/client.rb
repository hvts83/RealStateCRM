class Client < ApplicationRecord

    has_many :employees, through: :clientappointments, dependent: :destroy
    has_many :products

    validates :name, presence: true 
    validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } # I think RFC 5322
    validates_format_of :phone, presence: true, :with => /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/, :message => "Number must be XXX-XXX-XXXX"

end 