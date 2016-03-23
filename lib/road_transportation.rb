require "pry"

class RoadTransportation

	attr_accessor :number_of_wheels, :propelled_by, :number_of_passengers

	def initialize(options)
		@number_of_wheels = options[:number_of_wheels]
		@propelled_by = options[:propelled_by]
		@number_of_passengers = options[:number_of_passengers]
	end

end	

binding.pry