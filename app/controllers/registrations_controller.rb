class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def create
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :event_date, :first_name, :partner_first_name])
  end
end
