
# def prompt(message)
#   puts "=> #{message}"
# end 

# def validate(number)
#   number.to_i.to_s == number
# end 

# num = ''
# loop do 
#   prompt("Whats your favorite number?")
#   num = gets.chomp

#   if validate(num)
#     break
#   else 
#     prompt("hmmmm...Please enter a valid number bud!")
#   end 

# end 

# prompt("Number #{num} is a sick one for sure!")





def integer(input)
  input.to_i.to_s == input
end 

def float(input)
  input.to_f.to_s == input
end 

def number(input)
  float(input) || integer(input)
end 

puts 'please enter a number.'

num = ''
loop do 
  num = gets.chomp

  if number(num)
    break
  else 
    puts 'Invalid number please enter another.'
  end 
end 

puts "#{num} is a good pick!"




