class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_params, if: :devise_controller?


  def authenticate_admin
    unless current_user&.admin
      redirect_to root_path
      flash[:error] = "Accès restreint"
    end
  end

  private

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :password, :current_password)}
  end


end
