
#create a prompt that asks the user for their name\
#validate their name with break unless name.empty?
#make sure to use proper spacing between variables\
#and the beginning and end of your code

name = ''

puts("What is your name?")
loop do
  name = Kernel.gets().chomp()
  break unless name.empty?
  puts("Thats not a valid name, try again.")
end 
  
puts("Hello #{name}!")

