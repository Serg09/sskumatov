class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation) }
  end

  protected

  def after_sign_in_path_for(resource)
    '/static_pages/about' #:static_pages_about_url # Or :prefix_to_your_route
  end

  # def after_inactive_sign_in_path_for(resource)
  #   '/static_pages/home' #:static_pages_home_path # Or :prefix_to_your_route
  # end

  def after_sign_out_path_for(resource)
    '/static_pages/home'
  end
end
