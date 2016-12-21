class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_usuario!

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nome
  end
end
