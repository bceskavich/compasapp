class ApplicationController < ActionController::Base

  before_filter :set_search
  def set_search
    @q=Event.search(params[:q])
  end

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

  protected

  def confirm_logged_in
      unless session[:user_id]
          flash[:notice] = "Compas is currently under development. Check back soon for more details!"
          redirect_to :root
          return false
      else
          return true
      end
  end

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
