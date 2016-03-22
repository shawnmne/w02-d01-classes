require "pry"

class Pizza

	def initialize(options)
		@size = options[:size]
		@number_of_toppings = options[:number_of_toppings]
		@kind_of_cheese = options[:kind_of_cheese]
		@kind_of_sauce = options[:kind_of_sauce]
		@is_vegetarian = options[:is_vegetarian]
	end

	def size
		@size
	end
	
	def size = (new_size)
	 @size = new_size
	end 	

	def number_of_toppings
		@number_of_toppings
	end
	
	def number_of_toppings = (new_number_of_toppings)
	  @number_of_toppings = new_number_of_toppings
	end

	def kind_of_cheese
		@kind_of_cheese
	end

	def kind_of_cheese = (new_kind_of_cheese)
		@kind_of_cheese	= new_kind_of_cheese
	end

	def kind_of_sauce
		@kind_of_sauce
	end

	def kind_of_sauce = (new_kind_of_sauce)
		@kind_of_sauce = new_kind_of_sauce
	end

	def is_vegetarian = (new_is_vegetarian)
		@is_vegetarian = new_is_vegetarian

end

binding.pry		