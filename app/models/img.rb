# class Img < ApplicationRecord
# 	belongs_to :users
# 	has_many :user_regions  through: :regions
# 	mount_uploader :image, ImageUploader
	
# end

class Img < ApplicationRecord
	belongs_to :user
	has_many :regions,  through: :user_region
	mount_uploader :image, ImageUploader
end

