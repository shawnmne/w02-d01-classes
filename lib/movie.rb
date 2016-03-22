require "pry"

class Movie

	def initialize(options)
		@genre = options[:genre]
		@run_time = options[:run_time]
		@rating = options[:rating]
		@where_to_watch = options[:where_to_watch]
	end
end

binding.pry