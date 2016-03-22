require "pry"

class RoadTransportation

	def initialize(options)
		@number_of_wheels = options[:number_of_wheels]
		@propelled_by = options[:propelled_by]
		@number_of_passengers = options[:number_of_passengers]
	end

	def number_of_wheels
		@new_number_of_wheels
	end	

	def number_of_wheels = (new_number_of_wheels)
		@number_of_wheels = new_number_of_wheels
	end
	
	def propelled_by
		@propelled_by
	end	

	def propelled_by = (new_propelled_by)
		@propelled_by = new_propelled_by
	end	

	def number_of_passengers
		@number_of_passengers
	end	

	def number_of_passengers = (new_number_of_passengers)
		@number_of_passengers = new_number_of_passengers
	end	

end	

binding.pry