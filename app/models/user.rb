class User < ApplicationRecord
	has_one :img
	has_many :user_regions, through: :regions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #devise_for :users, :controllers => { registrations: 'registrations' }.0

end
