class AuthController < ApplicationController
  def login
  	if request.post?
  		user = User.find_by_user_name(params[:username])
  		if user && user.password == params[:password]
  			session[:user_id] = user.id
        if user.organizations.count > 0
          orgs = user.organizations
          orgs.each do |org|
            org.create_fb_events
          end
        end
  			redirect_to :controller => 'events', :action => 'index'
  		else
  			flash[:error] = "Invalid username/password!"
  			redirect_to :back
  		end
  	end
  end

  def logout
  	session[:user_id] = nil
  	redirect_to :controller => 'auth', :action => 'login'
  end
end
