class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include CanCan::ControllerAdditions
  protect_from_forgery with: :exception
end
