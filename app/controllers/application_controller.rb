class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :name,  :profession, :location, :date_of_birth, :is_female, :email, :password) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :name,  :profession, :location, :date_of_birth, :is_female, :email, :password, :password_confirmation, :current_password) }
        end
    
end


