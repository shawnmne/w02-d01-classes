require "pry"

#this is a class that creates road transportation objects
#
#+number_of_wheels is the number of wheels the vehicle has
#+propelled_by is what the vehicle is propelled by
#+number_of_passengers is how many passengers the vehicle can carry


class RoadTransportation

	attr_accessor :number_of_wheels, :propelled_by, :number_of_passengers

	def initialize(options)
		@number_of_wheels = options[:number_of_wheels]
		@propelled_by = options[:propelled_by]
		@number_of_passengers = options[:number_of_passengers]
	end

end	

binding.pry