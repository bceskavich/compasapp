class OwnersController < ApplicationController

	def create
		current_user = User.find(session[:user_id])
		@organization = Organization.find(params[:owner][:organization_id])

		current_user.ownership!(@organization, current_user)

		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @organization }
	 	end
	end

	def destroy
		current_user = User.find(session[:user_id])
		@organization = Owner.find(params[:id]).organization

		current_user.unown!(@organization)

		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @organization }
	 	end
	end

end
