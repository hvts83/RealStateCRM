class Customerappointment < ApplicationRecord
    belongs_to :customer
    belongs_to :employee

    validates_date :date, :after => Time.now, required: true 
    validates_time :time, required: true 
end
