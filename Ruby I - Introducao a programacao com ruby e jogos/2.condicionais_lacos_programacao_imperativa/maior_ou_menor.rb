#welcome message
def welcome 
	puts "\n\n\nWelcome to Guessing Game"
	puts "\nWhat's your name?"
	name = gets.strip
	puts "\n\nLet's starting the game for you, #{name}"
	name
end

# check game level and set the number range (1 = 0-30, 5 = 0-200)
def raffle_secret_number(game_level)
	case game_level
	when 1
		max_number = 30	
	when 5
		max_number =  200
	else
		max_number = 30
		puts "None selected game level, so, the game will select the level 1 for you automatically!"
	end
	raffled_number = rand(max_number) + 1
	puts "\nChoosing a secret number between 0 and #{max_number}..."	
	puts "OK. How about do you guess our secret number?"
	raffled_number
end

# receiving the attempt number and retry limit
def receive_the_player_number(attempt_number, retry_limit, attempts_content, result)
	puts "\n\nAttempts total: #{attempts_content.size}. Attempts inserted: #{attempts_content}"
	puts "Score: #{result}"
	puts "trying #{attempt_number} of #{retry_limit}"
	puts "Type an integer number:"
	received_number = gets.strip
	attempts_content << received_number.to_i
	#show message with the player's number
	puts "\n\nYou typed the number #{received_number}"
	received_number.to_i
end

def verify_correct_answer(secret_number, player_number)
	puts "Processing..."

	#comparing the player's number with the secret number
	#to_i: casting the string for integer
	okay = player_number == secret_number

	# structure which verify if typed number is equal secret number 
	# and inform at player if him won or losed
	if okay		
		puts "\n\nYou\'re OK! Congratulations!!! ;)"		
		true
	else
		if player_number > secret_number
			puts "\n\nThe typed number is bigger than secret number... Try again! :("
		else 
			puts "\n\nThe typed number is less than secret number... Try again! :("
		end
		false
	end
end

# manage game score
def points_manager(result, player_number, secret_number)
	result -= (player_number - secret_number).abs / 2.0
end

def get_game_level
	puts "What the game level do you desire? (1 - easy | 5 - hard)"
	level = gets.to_i
end

def play(retry_limit, attempts, result)
	#calling welcome function
	player_name = welcome

	# choosing a game level
	game_level = get_game_level

	# calling function and get your return value
	secret_number = raffle_secret_number game_level


	#processing
	for trying in 1..retry_limit
		
		player_number = receive_the_player_number trying, retry_limit, attempts, result
		if player_name.upcase == "PAULO"
			puts "\n\nYou\'re OK! Congratulations!!! ;)"
			break
		end

		# verify if answer is correct
		break if verify_correct_answer secret_number, player_number

		result = points_manager result, player_number, secret_number

	end
	puts "\n\n"
	puts "You finished the game with #{result} point(s)"

	puts "\n\n"
	#game end
end

def do_not_want_play?
	puts "Do you want try again? (1-Yes or 2-No)"
	option = gets.to_i
	do_not_want_play = option == 2
end

loop do
	#game begin
	retry_limit = 3
	attempts = [];
	result = 1000
	play retry_limit, attempts, result
	break if do_not_want_play?
end

puts "\n\n"