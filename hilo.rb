# Ruby HiLo console game where the user tries to guess a random number between 1 and 100.
class HiLoGame
  def initialize
    @guesses = 6
    @number = rand(1..100)
  end

  def play
    while @guesses > 0
      puts 'Guess the number between 1 & 100 (inclusive):'
      guess = gets.chomp.to_i

      if correct_guess?(guess)
        puts 'You win! #{@number} was the number!'
        break
      elsif too_high?(guess)
        puts 'Your guess is too high!'
      elsif too_low?(guess)
        puts 'Your guess is too Low!'
      end

      @guesses -= 1
    end
    if @guesses == 0
      puts "You ran out of guesses! The number was #{@number}"
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
