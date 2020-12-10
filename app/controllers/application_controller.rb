class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_params, if: :devise_controller?
  before_action :get_current_objective

  def get_current_objective
    @current_objective = Order.current_goal
  end

  private
  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :password, :current_password)}
  end 
end
