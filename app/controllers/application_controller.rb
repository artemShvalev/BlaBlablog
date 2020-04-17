class ApplicationController < ActionController::Base
  #before_action :authorize
  #helper_method :current_user
  #helper_method :logged_in?
  protect_from_forgery with: :exception
  include Pundit
  protect_from_forgery
  end


