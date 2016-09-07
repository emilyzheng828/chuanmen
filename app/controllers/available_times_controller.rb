require 'debugger'

class AvailableTimesController < ApplicationController
	def create
		debugger
		available_time = AvailableTime.new(params.require(:available_time).permit(:from, :to))
		available_time.user = current_user
		if available_time.save
			redirect_to root_path, flash: { success: "Thanks, your available time is saved" }
		else
			redirect_to root_path, flash: { alert: "Oops, your available time was not saved" }
		end
		# or 
		# current_user.available_times << AvailableTime.create(params.require(:available_time).permit(:from, :to))
		# current_user.save
	end
end