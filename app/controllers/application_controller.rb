class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    respond_to :json
    include ActionController::MimeResponds

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :name, :address, :email])
        
        # binding.break
    end
end
