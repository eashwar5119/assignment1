class PetRecord < ActiveRecord::Base
	has_many :appointments
end
