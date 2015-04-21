class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_name
    devise_parameter_sanitizer.for(:account_update) << :user_name
  end

end  
