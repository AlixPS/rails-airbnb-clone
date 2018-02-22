class ApplicationController < ActionController::Base
  include HttpAcceptLanguage::AutoLocale
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:city, :adress, :first_name, :last_name, :avatar_photo, :avatar_photo_cache, :birthdate, :driver_licence])
  end
end
