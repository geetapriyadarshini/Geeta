class CompaniesController < ApplicationController
	def index
	@companies = Company.all
	end	
	def new
	@company = Company.new
	@user =current_user
	end
	
def create
	#byebug
	@company = Company.new(company_params)
	@company.save
	redirect_to @company

	
end
def show
	@company = Company.find(params[:id])	
	end
	def edit
	@company = Company.find(params[:id])

		
	end
def update
	@company = Company.find(params[:id])	
	if @company.update(company_params)
		redirect_to company_path(@company)
	else
		render 'edit'
		
	end
end
def destroy
	
	@company = Company.find(params[:id])
	@company.destroy
	 redirect_to companies_path(@company)
end

private
def company_params
params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :start_date)	
end
end
