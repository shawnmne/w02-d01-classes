require "test_helper"
require_relative "../lib/movie.rb"

class MovieTest < Minitest::Test

	#tests able to build an object of road transportation
	def test_building_movie_object
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		refute_nil(exorcist)
	end

	#tests getter for genre
	def test_genre_getter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("horror", exorcist.genre)
	end

	#tests setter for genre
	def test_genre_setter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		exorcist.genre = "comedy"
		assert_equal("comedy", exorcist.genre)
	end

	#tests getter for run time
	def test_run_time_getter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("2:12", exorcist.run_time)
	end

	#tests setter for run time
	def test_run_time_setter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		exorcist.run_time = "0:15"
		assert_equal("0:15", exorcist.run_time)
	end

	#tests getter for rating
	def test_rating_getter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("9 chocolate bunnies", exorcist.rating)
	end

	#tests setter for rating
	def test_rating_setter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		exorcist.rating = "99 luft balloons"
		assert_equal("99 luft balloons", exorcist.rating)
	end

	#tests getter for where to watch
	def test_where_to_watch_getter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("at home on blue ray", exorcist.where_to_watch)
	end

	#tests setter for where to watch
	def test_where_to_watch_setter
		exorcist = Movie.new(genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		exorcist.where_to_watch = "in the bathroom"
		assert_equal("in the bathroom", exorcist.where_to_watch)
	end

end
