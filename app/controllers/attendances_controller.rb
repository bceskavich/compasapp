class AttendancesController < ApplicationController
	before_filter :confirm_logged_in
	
	def create
		current_user = User.find(session[:user_id])
		@event = Event.find(params[:attendance][:attended_event_id])
		current_user.attend!(@event, current_user)

		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @event }
	 	end
	end

	def destroy
		current_user = User.find(session[:user_id])
		@event = Attendance.find(params[:id]).attended_event
		current_user.unattend!(@event)

		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @event }
	 	end
	end
end
