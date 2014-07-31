def guessing_game
  guesses = 5
  max = 10
  num_to_guess = Random.rand(max) + 1
puts "I'm thinking of a number from 1 to 10. You have #{guesses}chances to guess it."
puts "give it a try"
guess = gets.to_i

while true
  if guess == num_to_guess
    puts "YOU CHEATED!"
    break
  elsif guesses.zero?
    puts" Game over dude. The Number was #{num_to_guess}."
    break
  else
    if guess > num_to_guess
        puts "tad bit high there chief"
    else
      puts "PULL UP! YOU'RE TOO LOW!!!"
  end
  guesses -= 1
   puts "#{guesses} left..."
   puts" Give it another shot."
guess = gets.to_i
  end
end
end
