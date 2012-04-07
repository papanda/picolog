class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reset_session_expires
  helper_method :current_user

  private
  def reset_session_expires
  	request.session_options[:expire_after] = 5.minutes
  end
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
