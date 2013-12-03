class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate, :except => 'login'
  def authenticate
    if ! session[:user_id]
     flash[:error] = 'Please login before proceed.'
     redirect_to :controller => 'auth', :action => 'login'
   end
  end

  helper_method :current_user
  helper_method :signed_in?

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    if session[:user_id]
      true
    end
  end
end
