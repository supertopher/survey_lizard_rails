class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate!
    redirct_to root_path unless current_user
  end

  def login user
    puts "*" * 40
    pp user
    session[:user_id] = user.id
  end

  def current_user
     @current_user ||= User.find session[:user_id] if session[:user_id]
     # @current_user ||= "No User"
  end

  helper_method :current_user, :login
end
