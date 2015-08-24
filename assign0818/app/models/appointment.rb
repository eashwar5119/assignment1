class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet_record
  validates :date_of_visit , {presence: true}
  validates :customer 
  
  
end
