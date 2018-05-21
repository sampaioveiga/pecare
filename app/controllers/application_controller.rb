class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, alert: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end

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
