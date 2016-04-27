def vertical_spacing
	puts "\n\n\n"
end

def welcome
	puts "***** Welcome to Hangman Game *****"
end

def request_player_name
	puts "What's your name, player"
	player_name = gets.strip
	puts "We'll start game for you, #{player_name}!"
	player_name
end

def random_secret_word
	puts "Raffling a secret word..."
	word = "programmer"
	puts "Ready!"
	puts "The secret word have #{word.size} letters..."
	word
end

def request_a_letter(attempts_number, errors_number)
	puts "Errors: #{errors_number}"
	puts "Attempts: #{attempts_number}"
	puts "Type a letter or word:"
	attempt = gets.strip
	puts "You type \"#{attempt}\". Processing..."
	attempt
end

def do_not_play_again
	puts "Are you sure exit game? (S/N)"
	do_play = gets.strip.upcase
	exit_game = do_play.upcase == "N"
	exit_game
end

def play(name)

	#get a secret word
	secret_word = random_secret_word

	errors = 0
	attempts = [];
	score = 0

	while errors < 5
		attempt = request_a_letter attempts, errors
		if attempts.include? attempt
			puts "The \"#{attempt}\" letter or word already was typed..."
			next
		end
		attempts << attempt

		attempt_has_one_letter = attempt.size == 1

		if attempt_has_one_letter
			
			count = secret_word.count(attempt)
			puts "Found #{count} letter(s) #{attempt}..."

		else
			if attempt.upcase == secret_word.upcase
				score += 100
				break
			elsif
				score -= 30
				errors += 1
			end
		end
			
		puts "You won #{score} points!"
	end

end

vertical_spacing
player_name = request_player_name

loop do	
	vertical_spacing
	play player_name
	vertical_spacing
	#break if do_not_play_again?
end



