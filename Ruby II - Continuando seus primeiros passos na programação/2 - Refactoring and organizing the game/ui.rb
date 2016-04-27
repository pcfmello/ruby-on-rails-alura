def vertical_spacing
	puts "\n\n\n"
end

def welcome_message
	puts "***** Welcome to Hangman Game *****"
	puts "What's your name, player"
end

def starting_game_message player_name
	puts "We'll start game for you, #{player_name}!"
end

def raffle_secret_word_message word
	puts "Raffling a secret word..."
	puts "Ready!"
	puts "The secret word have #{word.size} letters..."
end

def request_a_letter_initial_message attempts, errors_number
	puts "Errors: #{errors_number}"
	puts "Attempts: #{attempts}"
	puts "Type a letter or word:"
end

def request_a_letter_final_message attempt
	puts "You type \"#{attempt}\". Processing..."
end

def do_not_play_again_message
	puts "Are you sure exit game? (S/N)"
end

def letters_or_words_already_typed_message attempt
	puts "The \"#{attempt}\" letter or word already was typed..."
end

def letter_found_message count, letter
	puts "Found #{count} letter(s) #{letter}..."	
end

def final_game_message score
	puts "You won #{score} points!"
end

