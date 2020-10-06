VALID_CHOICES = %w(rock paper scissors) 

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("computer won.......")
  else
    prompt("It's a tie.")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def test_method
  prompt('test message')
end

test_method

loop do
  choice = ''
  loop do
    prompt("choose one of the following: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice, please try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
