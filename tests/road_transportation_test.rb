require "test_helper"
require_relative "../lib/road_transportation.rb"

class RoadTransportationTest < Minitest::Test

	#tests able to build an object of road transportation
	def test_building_object
		unicycle = RoadTransportation.new(number_of_wheels: 1, propelled_by: "self",
			number_of_passengers: 1)
		refute_nil(unicycle)
	end

	#tests getter for number of wheels
	def test_number_of_wheels_getter
		unicycle = RoadTransportation.new(number_of_wheels: 1, propelled_by: "self",
			number_of_passengers: 1)		
		assert(1, unicycle.number_of_wheels)
	end
	
	#tests getter for propelled_by
	def test_propelled_by_getter
		unicycle = RoadTransportation.new(number_of_wheels: 1, propelled_by: "self",
			number_of_passengers: 1)
		assert("self", unicycle.propelled_by)
	end

	#tests getter for number of passengers
	def test_number_of_passengers
		unicycle = RoadTransportation.new(number_of_wheels: 1, propelled_by: "self",
			number_of_passengers: 1)
		assert(1, unicycle.number_of_passengers)
	end
	

end