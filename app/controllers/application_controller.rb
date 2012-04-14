# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :set_layout

  before_filter :set_iphone_format, :japanese!, :reset_session_expires
  helper_method :current_user

  def set_iphone_format
    request.format = :iphone if iphone_request?
  end
  def set_layout
    iphone_request? ? "iphone" : "application"
  end

  private
  def iphone_request?
    request.user_agent =~ /(Mobile.+Safari)/
  end
  def japanese!
#    I18n.locale = :ja
#    Time.zone = 'Asia/Tokyo'
#    response['Content-Language'] = 'content="ja"'
  end
  def reset_session_expires
  	request.session_options[:expire_after] = 120.minutes
  end
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
