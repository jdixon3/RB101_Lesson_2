

# Rock crushes scissors, scissors cuts paper, paper covers rock, 
# rock crushes lizard, lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard, , 
# lizard eats paper, paper disproves Spock, Spock vaporizes rock, 


VICTORIES = { computer: 0, user: 0, draws: 0 }

VALID_CHOICES = %w(r p s l S)

def win?(first, second)
  (first == 'r' && second == 's') ||
    (first == 's' && second == 'p') ||
    (first == 'p' && second == 'r') ||
    (first == 'r' && second == 'l') ||
    (first == 'l' && second == 'S') ||
    (first == 'S' && second == 's') ||
    (first == 's' && second == 'l') ||
    (first == 'l' && second == 'p') ||
    (first == 'p' && second == 'S') ||
    (first == 'S' && second == 'r') 
end

def display_results(player, computer)
  if win?(player, computer)
    VICTORIES[:user] += 1
    prompt("You win!")
  elsif win?(computer, player)
    prompt("computer won.......")
    VICTORIES[:computer] += 1
  else
    prompt("It's a tie.")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do #main game loop

  choice = ''
  loop do 
    prompt("choose one of the following:  (r) = rock,  (p) = paper,  (s) = scissors,\
    (l) = lizard,  (S) = Spock")
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

  if VICTORIES[:user] == 5
    prompt("Player_1 you are the grand weiner!") 
  else
    VICTORIES[:computer] == 5
    prompt("Computer is the grand master!")
  end 

  prompt("Your total score: #{VICTORIES[:user]} | Computer total score: #{VICTORIES[:computer]} |\
  Total draws: #{VICTORIES[:draws]}")
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end #main game loop 

prompt("Thank you for playing!")


# prompt("You are the grand winner!")

# break when player_count == 5 || computer_count == 5


# if $player_count == 5
#   puts "Player wins!"
#   break
# elsif $computer_count == 5
#   puts "Computer wins!"
#   break
# end
# end