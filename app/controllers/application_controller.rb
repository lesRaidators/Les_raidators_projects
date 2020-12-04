class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_params, if: :devise_controller?

end
