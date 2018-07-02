class ApplicationController < ActionController::Base
  beefore_filter :configurepermitted_parameters, if: :devise_controller?

  protected
  def configurepermitted_parameters
    devise_parameter_santaizer.for(:sign_up){ |u| u.permit(:username, :phonenumber, :password, :password_confirmation :remember_me) }
    devise_parameter_santaizer.for(sign_in){ |u| u.permit(:login, :username, :phonenumber, :password, :remember_me) }
    devise_parameter_santaizer.for(:account_update) { |u| u.permit(:username, :phonenumber, :password, :password_cpnfirmation, :surrent_password) }
  end






end
