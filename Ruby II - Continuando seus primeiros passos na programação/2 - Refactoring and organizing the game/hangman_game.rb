require_relative('ui')

def request_player_name
	player_name = gets.strip
	player_name
end

def raffle_secret_word
	word = "programmer"	
	word
end

def request_a_letter
	attempt = gets.strip
	attempt
end

def do_not_play_again	
	do_play = gets.strip.upcase
	exit_game = do_play.upcase == "N"
	exit_game
end

def play(player_name)

	# #insert three blank lines
	# vertical_spacing

	# #show the welcome message and request player name
	# welcome_message	

	# #request player nname
	# player_name = request_player_name

	#start the game message with player name
	starting_game_message player_name

	#get a secret word
	secret_word = raffle_secret_word

	#show raffle secret word message
	raffle_secret_word_message secret_word	

	errors = 0
	attempts = [];
	score = 0

	while errors < 5
		#show information message with game information
		request_a_letter_initial_message attempts, errors

		#request a letter or word
		attempt = request_a_letter

		request_a_letter_final_message attempt

		if attempts.include? attempt
			#show message informing if letter or word already was typed
			letters_or_words_already_typed_message attempt
			next
		end
		attempts << attempt

		attempt_has_one_letter = attempt.size == 1

		if attempt_has_one_letter
			
			count = secret_word.count(attempt)

			#inform which a letter was found
			letter_found_message count, attempt

		else
			if attempt.upcase == secret_word.upcase
				score += 100
				break
			elsif
				score -= 30
				errors += 1
			end
		end

		#show game final message with player score
		final_game_message score			
	end

end

loop do	
	vertical_spacing

	# #show the welcome message and request player name
	welcome_message	

	# #request player name
	player_name = request_player_name
	play player_name
	vertical_spacing
	#break if do_not_play_again?
end



