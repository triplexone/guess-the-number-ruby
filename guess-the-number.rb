secret = rand(31)
attempts = 0
puts secret
puts "Guess the secret number"
print "Your name: "
name = gets.chomp
puts "Choose a number between 1 and 30"

while true
  attempts += 1
  print "Enter your guess: "
  guess = gets.chomp

  case guess
    when /\D/, ""
    puts "Wrong input! Only numbers allowed."
    attempts -= 1
  else
    if guess.to_i == secret
    puts "Congratulations #{name}, you've guessed it! The secret number is #{secret}"
    puts "You've guessed it in #{attempts} attempts"
    break
  elsif guess.to_i < 1 || guess.to_i >30
    puts "You must enter a number between 1 and 30"
  elsif guess.to_i < secret
    puts "The secret number is not #{guess}. Try something bigger."
  elsif guess.to_i > secret
    puts "The secret number is not #{guess}. Try something smaller."
    end
  end
end
