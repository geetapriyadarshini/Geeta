class CountriesController < ApplicationController
	def index
	@countries = Country.all
	end	
	def new
	@country =Country.new	
	@user = current_user
	end

def create
	@country = Country.new(country_params)
	@country.save
	redirect_to country_path(@country)
end

def show
	@country= Country.find(params[:id])	
	end

def update
	@country = Country.find(params[:id])	
	if @country.update(country_params)
		redirect_to country_path(@country)
	end
end

def edit
	@country = Country.find(params[:id])
end

def destroy
	@country= Country.find(params[:id])	
	@country.destroy
	redirect_to countries_path(@country)
end

private
def country_params
	params.require(:country).permit(:country_name)
end
end
