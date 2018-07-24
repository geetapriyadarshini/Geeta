class UserRegionsController < ApplicationController
def index
	@u_regions = UserRegion.all
	end	
	def new
	@u_region = UserRegion.new	
	end
def create
	@u_region= UserRegion.new(user_params)
	@u_region.save
	redirect_to @u_region
end
def show
	@u_regions= UserRegion.find(params[:id])	
	end
def update
	@u_regions = UserRegion.find(params[:id])	
	if @u_region.update(user_params)
		redirect_to @u_region
	end
end
def edit
	@u_regions = UserRegion.find(params[:id])
end
def destroy
	@u_region = UserRegion.find(params[:id])	
	@u_region.destroy
	redirect_to @u_region
end
private
def user_params
	params.require(:user_region).permit(:user_id, :region_id)
end

end
