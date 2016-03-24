require "pry"

#this is class that creates pizzas
#
#+size is the diameter of the pizza in inches
#+number_of_toppings is the number of toppings expressed as an integer
#+kind_of_cheese is the predominant kind of cheese on the pizza
#+kind_of_sauce is the predominant kind of sauce on the pizza
#+is_vegetarian is a boolean that is true if the pizza is vegetarian


class Pizza

	attr_accessor	:size, :number_of_toppings, :kind_of_cheese, :kind_of_sauce,
								:is_vegetarian

	def initialize(options)
		@size = options[:size]
		@number_of_toppings = options[:number_of_toppings]
		@kind_of_cheese = options[:kind_of_cheese]
		@kind_of_sauce = options[:kind_of_sauce]
		@is_vegetarian = options[:is_vegetarian]
	end

	def movie
		@movie
	end

	def movie=(movie)	
		@movie = movie
	end
	
end

#binding.pry		