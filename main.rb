require_relative "lib/movie.rb"
require "pry"

puts "Welcome to movie database"

choice = 9
while choice != 0
	puts "\n\n1 Add a movie to database\n2 Review movies in database\n3 Change rating of movie\n0 Exit"
	print "\nPlease make a selection "
	choice = gets.chomp.to_i
 
	if choice == 1
		puts "1 selected"
	elsif choice == 2 
	 	puts "2 selected"
	elsif choice == 3
		puts "3 selected"
	elsif choice == 0
		puts "\nGoodbye"
	else
		puts "\nInvalid choice selected"		 		
	end
end	