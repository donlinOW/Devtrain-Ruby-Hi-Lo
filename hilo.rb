## computer secretly picks number between 1 and 100 inclusive
number = rand(1...101)
puts "Random number between 1 & 100 (inclusive): #{number}"

# get user input
puts "Guess the randomly computer generated number (1-100):"
guess = gets.chomp.to_i

puts "User guess: #{guess}"

# conditionals

# if user guesses correctly, game is won (guess = number)
if (guess == number)
    puts "You win!"
elsif guess > number
    puts "Your guess is too high!"
elsif guess < number
    puts "Your guess is too Low!"
end