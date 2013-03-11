# Guessing Game
# by Me

class GuessingGame
	def initialize
		@number = rand(10) + 1 # rand(10) - would give 0-9
		@guesses = [] #Array.new
	end

	def play
		puts 'Guessing game!'
		guess = get_guess('Guess my number: ')

		while @number != guess
			puts high_or_low(guess)
			print_guesses
			guess = get_guess("Guess again")
		end

		puts "You win!"
	end

	def get_guess prompt
		print "#{prompt}:"
		guess = gets.to_i
		@guesses << guess # << append operator
		guess
	end

	def high_or_low(guess)
	# guess > number ? "High" : "Low"
		if guess > @number
			puts "High"
		else
			puts "Low"
		end
	end

	def print_guesses
		puts "Previous Guesses: #{@guesses.join(", ")}"
	end

end

guessing_game = GuessingGame.new #makes a new instance of that class
guessing_game.play

# instance = GuessingGame.allocate
# instance.initialize




