class Company < ApplicationRecord
	 # attr_accessible :name, :city_id, :state_id, :coun
   belongs_to :country
  belongs_to :state
  belongs_to :city
  has_many :users
  has_many :places
end
