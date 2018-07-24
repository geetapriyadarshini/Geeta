class Country < ApplicationRecord
	# has_many :companies, through: :cities
	has_many :companies, through: :states
	
end
