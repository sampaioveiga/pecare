class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [
        :title,
        :full_name,
        :employee_id,
        :email,
        :phone_number,
        :cellphone_number,
        :department_id,
        :office_location_id,
        :admin
      ]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [
        :title,
        :full_name,
        :employee_id,
        :phone_number,
        :email,
        :cellphone_number,
        :department_id,
        :office_location_id,
        :admin
      ]
    )
  end
end
