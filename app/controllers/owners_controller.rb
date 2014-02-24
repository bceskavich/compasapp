class OwnersController < ApplicationController

	def create
		@user = User.find(params[:owner][:user_id])
		@organization = Organization.find(params[:owner][:organization_id])

		@user.ownership!(@organization, @user)

		respond_to do |format|
	      format.html { redirect_to @organization, notice: 'Admin added!'}
	      format.json { render json: @organization }
	 	end
	end

	def destroy
		@organization = Organization.find(params[:id])
		@user = User.find(params[:owner][:user_id])
		
		@user.unown!(@organization)
		
		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @organization }
	 	end
	end

end
