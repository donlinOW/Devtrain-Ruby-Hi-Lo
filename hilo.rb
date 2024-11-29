# predefined number of guesses allowed
guesses = 6
## computer secretly picks number between 1 and 100 inclusive
number = rand(1...101)
puts "Random number between 1 & 100 (inclusive): #{number}"

# get user input
puts "Guess the randomly computer generated number (1-100):"
guess = gets.chomp.to_i
puts "User guess: #{guess}"

# conditional logic
while guesses > 0
    puts "Guess the randomly computer generated number (1-100):"
    guess = gets.chomp.to_i
    # if user guesses correctly, game is won (guess = number)
    if (guess == number)
        puts "You win!"
        break
    # decrement number of guesses left and tell them their guess was too high
    elsif guess > number
        guesses -= 1
        puts "Your guess is too high!"
    # decrement number of guesses left and tell them their guess was too low
    elsif guess < number
        guesses -=1
        puts "Your guess is too Low!"
    end
end

if guesses == 0
    puts "You ran out of guesses! The number was #{number}"
end
