require_relative "lib/movie.rb"
require "pry"

#add_a_movie creates a movie object
#
#accepts the following variables to create the object
#+title  is the title of the movie
#+genre is the genre of the movie
#+run_time is the run time of the movie
#+rating is the rating of the movie in chocolate bunnies from 1 to 10
#+where_to_watch is where the movie can be watched
#
#returns a movie object
def add_a_movie
	puts "\n\n Adding movie\n"
	print "What movie would you like to add? "
	title = gets.chomp

	print "What genre is the movie? "
	genre = gets.chomp

	print "What is the run time of the movie? "
	run_time = gets.chomp

	print "What is the rating of the movie in chocolate bunnies from 1 to 10? "
	rating = gets.chomp.to_i

	print "Where can this movie be watched? "
	where_to_watch = gets.chomp

	Movie.new(title: title, genre: genre, run_time: run_time, rating: rating, 
						where_to_watch: where_to_watch)
end



#review_movie shows the movies currently in the database
def movie_stored(movie)
	puts "\n\nMovie stored\n"
	puts "#{movie.title} is a #{movie.genre} movie."
	puts "#{movie.title} is #{movie.run_time} long."
	puts "#{movie.title} is currently rated #{movie.rating} chocolate bunnies."
	puts "#{movie.title} can be watched #{movie.where_to_watch}."
end	

def show_all_movies(arr)
	arr.each do |movie|
		movie_stored(movie)
	end
end	

def select_a_movie(movies)
	movie = nil
	if !movies.empty?
		movies.each_with_index do |movie, index|
			puts "#{index}: #{movie.title} currently rated #{movie.rating} chocolate bunnies"
		end

		print "\nWhich movie would you like to change the movie rating? "
		choice = gets.chomp.to_i
		if choice < 0 || choice >= movies.length
			puts "Invalid choice"
			print "Which movie would you like to change the rating? "
			gets.chomp.to_i
		end	
		movie = movies[choice]
		puts "\nPlease change the rating for #{movie.title}."
		print"How many chocolate bunnies would you like to rate it (1 to 10)? "
		new_rating = gets.chomp.to_i
		movie.rating = new_rating
		puts "\nThank you for updating rating for #{movie.title} to #{movie.rating} chocolate bunnies"
							
	end

	

end

#def change_rating(movie)
#	puts "\nPlease change the rating for #{movie.title}."
#	print"How many chocolate bunnies would you like to rate it (1 to 10)? "
#	gets.chomp.to_i
#	puts "\nThank you for updating rating for #{movie.title} to #{movie.rating} chocolate bunnies"


#end	

choice = 9
movies = []

puts "Welcome to movie database"

while choice != 0
	puts "\n\n1 Add a movie to database\n2 Review movies in database\n3 Change rating of movie\n0 Exit"
	print "\nPlease make a selection "
	choice = gets.chomp.to_i
 
	if choice == 1
		movies << add_a_movie
		movie_stored(movies.last)

	elsif choice == 2 
	 	show_all_movies(movies)
	 	
	elsif choice == 3
		select_a_movie(movies)
#		change_rating(movie)

	elsif choice == 0
		puts "\nGoodbye"
	else
		puts "\nInvalid choice selected"		 		
	end
end	