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
		@organization = Owner.where(:organization_id => params[:owner][:organization_id])
		@ownership = @organization.find_by_user_id(params[:owner][:user_id])
		
		@ownership.destroy
		
		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @organization }
	 	end
	end

end
