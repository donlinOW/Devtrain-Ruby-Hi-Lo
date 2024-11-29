# predefined number of guesses allowed
guesses = 6
## computer secretly picks number between 1 and 100 inclusive
number = rand(1...101)

# conditional logic that is run as long as user has remaining guesses left
while guesses > 0
    # get user input
    puts "Guess the number between 1 & 100 (inclusive):"
    # store user input
    guess = gets.chomp.to_i
    # if user guesses correctly, game is won (guess = number)
    if (guess == number)
        puts "You win! #{number} was the number!"
        break
    # if guess too high, decrement number of guesses left and tell them their guess was too high
    elsif guess > number
        guesses -= 1
        puts "Your guess is too high!"
    # if guess too low, decrement number of guesses left and tell them their guess was too low
    elsif guess < number
        guesses -=1
        puts "Your guess is too Low!"
    end
end

# if user makes 6 incorrect guesses, game is lost and number is revealed
if guesses == 0
    puts "You ran out of guesses! The number was #{number}"
end
