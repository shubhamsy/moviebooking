class Show < ApplicationRecord
	belongs_to :movie
	belongs_to :screen

	def timing
		return "#{self.starttime.strftime("%l:%M")} - #{self.endtime.strftime("%l:%M")}" 
	end
end
