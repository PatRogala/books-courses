class ApplicationController < ActionController::Base
  before_action :config_devise_params, if: :devise_controller?

  layout :layout_by_resource

  private

  def layout_by_resource
    devise_controller? ? 'session' : 'application'
  end

  protected

  def config_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[
                                        first_name
                                        last_name
                                        username
                                        email
                                        password
                                        password_confirmation
                                      ])
  end
end
