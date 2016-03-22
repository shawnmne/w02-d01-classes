require "pry"

class Movie

	def initialize(options)
		@genre = options[:genre]
		@run_time = options[:run_time]
		@rating = options[:rating]
		@where_to_watch = options[:where_to_watch]
	end

	def genre
		@genre
	end

	def genre=(new_genre)
		@genre = new_genre
	end

	def run_time
		@run_time
	end

	def run_time=(new_run_time)
		@run_time = new_run_time
	end

	def rating
		@rating
	end

	def rating=(new_rating)
		@rating = new_rating
	end

	def where_to_watch 
		@where_to_watch
	end

	def where_to_watch=(new_where_to_watch)
		@where_to_watch = new_where_to_watch
	end

end

binding.pry