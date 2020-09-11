
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)


def prompt(message)
  Kernel.puts("=> #{message}")  #creating a prompt method that can be replicated in every message to the user 
end 

def valid_number(num)   #performing a validation on number
  num.to_i != 0
end 

def operation_to_message(op)
  case op
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
  end 
end 

prompt("Bienvenidos to Wes's calulator, what is your name?")


name = '' #creating the local variable name outside the loop so it can be used elsewhere in our code
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please enter a valid name.")
  else  
    break
  end 
end 

prompt("Hello #{name}, let's get this thing started!")

loop do # main game loop
  num_1 = ''
  loop do 
    prompt("Please enter your first number.")
    num_1 = Kernel.gets().chomp()    

    if valid_number(num_1)
      break
    else   
      prompt("hmmm...something seems off eh bud.")
    end
  end 

  num_2 = ''
  loop do 
    prompt("Please enter the second number")
    num_2 = Kernel.gets().chomp()   

    if valid_number(num_2)
      break
    else  
      prompt("hmmm...something seems off eh bud.")
    end 
  end 
  
  operator_prompt = <<-MSG  
    What operation would you like to perform?
    1) add
    2) subtract 
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do 
    operation = Kernel.gets().chomp()

  if %w(1 2 3 4).include?(operation)
    break
  else
    prompt("Try again, please enter 1, 2, 3 or 4.")
    end 
  end 

  prompt("#{operation_to_message(operation)} the two numbers.....")

  result = case operation
           when '1'
            num_1.to_i() + num_2.to_i()
           when '2'
            num_1.to_i() - num_2.to_i()
           when '3'
            num_1.to_i() * num_2.to_i()
           when '4'
            num_1.to_f() / num_2.to_f()
  end 

    prompt("Your answer is #{result}!")

    prompt("Do you want to run this again? (Y to start over)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y') #validating their answer to run the code again
end 

prompt("Thanks for using my calculator #{name}!")






