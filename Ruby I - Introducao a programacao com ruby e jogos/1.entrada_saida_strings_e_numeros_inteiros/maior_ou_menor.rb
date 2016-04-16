player_number = nil;
secret_number = 175
name = ""

puts "\n\n\nWelcome to Guessing Game"
puts "\nWhat's your name?"

name = gets

puts "\n\nLet's starting the game for you, " + name
puts "\nChoosing a secret number between 0 and 200..."
puts "OK. How about do you guess our secret number?"
puts "\n\n1st tentativa..."
puts "Type a integer number:"

player_number = gets

puts "\n\nYou typed the number " + player_number
puts "Processing..."

if player_number.to_i == secret_number
	puts "\n\nYou\'re OK! Congratulations!!! ;)"
else
	puts "\n\nYou wrong... Try again! :("
end

puts "\n\n"

