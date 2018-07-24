class State < ApplicationRecord
	
	has_many :companies, through: :cities
end
