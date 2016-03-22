require "pry"

class RoadTransportation

	def initialize(options)
		@number_of_wheels = options[:number_of_wheels]
		@propelled_by = options[:propelled_by]
		@number_of_passengers = options[:number_of_passengers]
	end
end	

binding.pry