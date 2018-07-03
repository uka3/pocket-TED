class ApplicationController < ActionController::Base
  before_action :configurepermitted_parameters, if: :devise_controller?
  
  protected
  def configurepermitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up,keys: [:username, :phonenumber, :password, :password_confirmation, :remember_me])
    #usernameフィールドがないためエラーになってます。
    devise_parameter_sanitizer.permit(:sign_up,keys: [:phonenumber, :password, :password_confirmation, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in,keys: [:phonenumber, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update,keys: [:username, :phonenumber, :password, :password_cpnfirmation, :surrent_password])
  end
end
