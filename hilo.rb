# frozen_string_literal: true

# Ruby HiLo console game where the user tries to guess a random number between 1 and 100.
class HiLoGame
  def initialize
    @guesses = 6
    @number = rand(1..100)
  end

  def play
    previous_guesses = []

    while @guesses.positive?
      puts 'Guess the number between 1 & 100 (inclusive):'
      guess = validate_guess(previous_guesses)

      if correct_guess?(guess)
        puts "You win! #{@number} was the number!"
        break
      elsif too_high?(guess)
        puts 'Your guess is too high!'
      elsif too_low?(guess)
        puts 'Your guess is too low!'
      end

      @guesses -= 1
    end
    puts "You ran out of guesses! The number was #{@number}" if @guesses.zero?
  end

  private

  def validate_guess(previous_guesses)
    loop do
      input = gets.chomp
      unless input.match?(/^\d+$/)
        puts 'Invalid input, please enter a number between 1 & 100:'
        next
      end

      guess = input.to_i
      unless guess.between?(1, 100)
        puts 'Invalid input, please enter a number between 1 & 100:'
        next
      end

      if previous_guesses.include?(guess)
        puts 'You have already guessed that number, try a different number:'
        next
      end

      previous_guesses << guess
      return guess
    end
  end

  def too_high?(guess)
    guess > @number
  end

  def too_low?(guess)
    guess < @number
  end

  def correct_guess?(guess)
    guess == @number
  end
end

HiLoGame.new.play
