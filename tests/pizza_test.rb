require "test_helper"
require_relative "../lib/pizza.rb"

class PizzaTest < Minitest::Test

	#tests able to build object of pizza
	def test_building_pizza_object
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		refute_nil(crazy_pizza)
	end

	#tests getter for size
	def test_size_getter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)		
		assert("22 inch", crazy_pizza.size)
	end

	#tests setter for size
	def test_size_setter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)		
		crazy_pizza.size = "30 inch"
		assert_equal("30 inch", crazy_pizza.size)	
	end

	#tests getter for number of toppings
	def test_number_of_toppings_getter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		assert(13, crazy_pizza.number_of_toppings)
	end

	#tests setter for number of toppings
	def test_number_of_toppings_setter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		crazy_pizza.number_of_toppings = 7
		assert_equal(7, crazy_pizza.number_of_toppings)
	end

	#tests getter for kind of sauce
	def test_kind_of_sauce_getter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		assert("barbeque", crazy_pizza.kind_of_sauce)
	end

	#tests setter for kind of sauce
	def test_kind_of_sauce_setter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		crazy_pizza.kind_of_sauce = "mama haiti hot sauce"
		assert_equal("mama haiti hot sauce", crazy_pizza.kind_of_sauce)
	end

	#tests getter for kind of cheese
	def test_kind_of_cheese_getter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		assert("swiss", crazy_pizza.kind_of_sauce)
	end

#tests setter for kind of cheese
	def test_kind_of_cheese_setter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		crazy_pizza.kind_of_cheese = "goat cheese"
		assert_equal("goat cheese", crazy_pizza.kind_of_cheese)
	end

	#tests getter for is vegetarian		
	def test_is_vegetarian_getter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		assert(true, crazy_pizza.is_vegetarian)
	end

#tests setter for is vegetarian		
	def test_is_vegetarian_setter
		crazy_pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		crazy_pizza.is_vegetarian = false
		assert_equal(false, crazy_pizza.is_vegetarian)
	end
end