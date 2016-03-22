require "pry"

class Pizza

	def initialize(options)
		@size = options[:size]
		@number_of_toppings = options[:number_of_toppings]
		@kind_of_cheese = options[:kind_of_cheese]
		@kind_of_sauce = options[:kind_of_sauce]
		@is_vegetarian = options[:is_vegetarian]
	end
end

binding.pry		