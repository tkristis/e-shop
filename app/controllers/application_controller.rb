class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_categories

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  def set_categories
    @categories = Category.all
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
      [
        :password,
        :password_confirmation,
        :remember_me,
        :first_name,
        :last_name,
        :date_of_birth,
        :address,
        :address2,
        :postcode,
        :phone_number,
        :home_number,
        :country,
        :city
      ])
    devise_parameter_sanitizer.permit(:sign_in, keys:
      [
        :username,
        :password,
        :remember_me
      ])
    devise_parameter_sanitizer.permit(:account_update, keys:
      [
        :username,
        :email,
        :password,
        :password_confirmation,
        :current_password
      ])
  end
end
