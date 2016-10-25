class AvailableTime < ActiveRecord::Base
	belongs_to :user

	def start_time
		self.from
	end

	def end_time
		self.to
	end
end