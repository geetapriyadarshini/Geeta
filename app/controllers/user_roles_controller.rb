class UserRolesController < ApplicationController
	def index
	@u_roles = UserRole.all
	end	
	def new
	@u_role = UserRole.new	
	end
def create
	@u_role= UserRole.new(roles_params)
	@u_role.save
	redirect_to @u_role
end
def show
	@u_regions= UserRole.find(params[:id])	
	end
def update
	@u_regions = UserRole.find(params[:id])	
	if @u_role.update(user_params)
		redirect_to @u_role
	end
end
def edit
	@u_regions = UserRole.find(params[:id])
end
def destroy
	@u_role = UserRole.find(params[:id])	
	@u_role.destroy
	redirect_to @u_role
end
private
def roles_params
	params.require(:user_role).permit(:role_name)
end

end