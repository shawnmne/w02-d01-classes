require "pry"

class Movie

	attr_reader :genre, :run_time, :rating, 
	    :where_to_watch

	attr_writer :genre, :run_time, :rating,
			:where_to_watch    
	

	def initialize(options)
		@genre = options[:genre]
		@run_time = options[:run_time]
		@rating = options[:rating]
		@where_to_watch = options[:where_to_watch]
	end

	
end

binding.pry