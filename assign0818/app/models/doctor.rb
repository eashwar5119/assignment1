class Doctor < ActiveRecord::Base
	has_many :appointments
	validates :name , length: {in: 1..35}
	validates :zip , length: {is: 6}
     
end
