# Guessing Game
# by Me

class GuessingGame
	def initialize
		@number = rand(10) + 1 # rand(10) - would give 0-9
		@guesses = [] #Array.new
		puts self
	end

	def self.play
		puts "Called class method"
		puts self
	end

	def get_guess
		guess = gets.to_i
		$guesses << guess # << append operator
		# $guesses.push(guess)
		# $guesses[$guesses.length] = guess
		guess
	end
end

GuessingGame.play

guessing_game = GuessingGame.new #makes a new instance of that class
guessing_game.play

# instance = GuessingGame.allocate
# instance.initialize

def high_or_low(guess, number)
	# guess > number ? "High" : "Low"
	if guess > number
		puts "High"
	else
		puts "Low"
	end
end

def print_guesses
	puts "Previous Guesses: #{$guesses.join(", ")}"
end


puts 'Guessing game!'
print 'Guess my number: '
guess = get_guess

while number != guess
	puts high_or_low(guess, number)
	print_guesses
	print "Guess again: "
	guess = get_guess
end

puts "You win!"