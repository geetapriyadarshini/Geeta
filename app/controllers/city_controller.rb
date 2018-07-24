class CityController < ApplicationController
def index
	@cities = City.all	
	end	
	def new
	@city = City.new	
	@user = current_user
	end

def create

 @city = City.new(city_params)
 @city.save
 flash[:city] = "city created"
 redirect_to city_path(@city)
end
def show
	@city= City.find(params[:id])
end
def edit
	@city=City.find(params[:id])
end
def update
	@city= City.find(params[:id])
	if @city.update(city_params)
			redirect_to city_path
		else
			render 'edit'
		end
end
def destroy
	@city= City.find(params[:id])
	@city.destroy
	redirect_to  city_index_path
end
private
def city_params
	params.require(:city).permit(:city_name)
	#@city = City.new(params.require(:city).permit(:city_name))

end
end
