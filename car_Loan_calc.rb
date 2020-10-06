

def prompt(message)
  puts "=> #{message}"
end 

def loan_validation(input)
  input.to_i().to_s() == input
end 

prompt("Welcome to Wes's loan calculator!")

loop do #main game loop 

  loan_amount = ''
  loop do 
    prompt("What is your loan amount?")
    loan_amount = gets().chomp()

    if loan_validation(loan_amount)
      break
    else 
      prompt("hmmmmmm... please enter a valid number.")
    end 
  end 

  apr = ''
  loop do 
    prompt("What is your Annual Percentage Rate? (APR)"\
          "Enter a number to the second decimal place.")
    apr = gets().chomp()

    if apr.empty?() || apr.to_f() < 0
      prompt("hmmmm.... please enter a valid number greater than 0.")
    else 
      break
    end 
  end 
  
  loan_duration = ''
  loop do 
    prompt("What is your loan duration in years?")
    loan_duration = gets().chomp()

    if loan_duration.empty?() || loan_duration.to_i < 0 
      prompt("Hmmmm....please enter a valid number greater than 0.")
    else 
      break
    end 
  end 


  monthly_apr = (apr.to_f() / 100.00) / 12
  loan_duration_months = loan_duration.to_i() * 12
  
  monthly_payment = loan_amount.to_f() * 
                    (monthly_apr / 
                    (1 - (1 + monthly_apr)**(-loan_duration_months)))

  rounded_payment = monthly_payment.round(2)

  prompt("Your monthly payment will be $#{rounded_payment} american dollars!")

  prompt("Do you have another monthly payment to calculate?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')

end #main game loop 

prompt("Thanks for crunching those nums!!!")



