class ApplicationController < ActionController::Base
	 before_action :authenticate_user!

	  protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
           # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
           
            devise_parameter_sanitizer.permit(:sign_up , keys:[:email, :password, :current_password, :first_name, :last_name, :company_id, :user_role_id, :img_id, :start_date, :end_date, :monthly_charge, :notes]) 
             
  end
        end
