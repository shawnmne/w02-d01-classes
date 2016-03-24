require "pry"

require_relative "pizza.rb"

#this is a class that creates a movie object
#
##+title is the title of the movie
#+genre is the genre the movie is in
#+run_time is how long the movie is
#+rating is how good or bad the movie is on a scale of 1 to 10 chocolate bunnies
#+where_to_watch is the best suggestion to watch the movie, ie at the theatre, at home
#  on netflix, at home on blue ray.

class Movie

	attr_reader :title, :genre, :run_time, :rating, 
	    :where_to_watch

	attr_writer :title, :genre, :run_time, :rating,
			:where_to_watch    
	

	def initialize(options)
		@title = options[:title]
		@genre = options[:genre]
		@run_time = options[:run_time]
		@rating = options[:rating]
		@where_to_watch = options[:where_to_watch]
	end

	def pizza
		@pizza
	end	

	def pizza=(pizza)
		@pizza = pizza
		pizza.movie = self
	end	
	
end

binding.pry