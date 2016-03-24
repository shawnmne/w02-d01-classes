require "test_helper"
require_relative "../lib/movie.rb"

class MovieTest < Minitest::Test

	#tests able to build an object of road transportation
	def test_building_movie_object
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		refute_nil(movie)
	end

	#tests getter for title
	def test_title_getter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("Exorcist", movie.title)
	end

	#tests setter for title
	def test_title_setter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		movie.title = "Caddy Shack"
		assert_equal("Caddy Shack", movie.title)
	end

	#tests getter for genre
	def test_genre_getter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("horror", movie.genre)
	end

	#tests setter for genre
	def test_genre_setter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		movie.genre = "comedy"
		assert_equal("comedy", movie.genre)
	end

	#tests getter for run time
	def test_run_time_getter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("2:12", movie.run_time)
	end

	#tests setter for run time
	def test_run_time_setter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		movie.run_time = "0:15"
		assert_equal("0:15", movie.run_time)
	end

	#tests getter for rating
	def test_rating_getter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("9 chocolate bunnies", movie.rating)
	end

	#tests setter for rating
	def test_rating_setter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		movie.rating = "99 luft balloons"
		assert_equal("99 luft balloons", movie.rating)
	end

	#tests getter for where to watch
	def test_where_to_watch_getter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		assert("at home on blue ray", movie.where_to_watch)
	end

	#tests setter for where to watch
	def test_where_to_watch_setter
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		movie.where_to_watch = "in the bathroom"
		assert_equal("in the bathroom", movie.where_to_watch)
	end

#test assigning to a movie
	def test_assigning_to_a_movie
		pizza = Pizza.new(size: "22 inch", number_of_toppings: 13, kind_of_sauce: "barbeque",
			kind_of_cheese: "swiss", is_vegetarian: true)
		movie = Movie.new(title: "Exorcist", genre: "horror", run_time: "2:12",
			rating: "9 chocolate bunnies", where_to_watch: "at home on blue ray")
		
		movie.pizza = pizza

		assert_equal(movie, pizza.movie)

		assert_equal(pizza, movie.pizza)

	end	
end
