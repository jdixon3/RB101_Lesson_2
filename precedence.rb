

# array = [1, 2, 3]

# mapped_array = array.map { |num| num + 1 }

# mapped_array.tap { |value| value }

# mapped_and_tapped = mapped_array.tap { |value| p 'hello'}

# p mapped_and_tapped

# regex practice/examples....

# if "Do you like dogs?".match(/cats/)
#   puts "match found!"
# else 
#   puts "invalid entry, please try again!"
# end 

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def prompt(message)
  puts "=> #{message}"
end 

def number(input)
  integer?(input) || float?(input)
end 

loop do 
  prompt("Whats your favorite number?")
  num = gets.chomp

  if number(num)
    prompt("#{num} is a sick number!")
  else 
    prompt("Please enter a valid number!")
  end 
end 

prompt("Thanks for playing mate!")
  





