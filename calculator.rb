
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Bienvenidos to Wes's calulator!")

Kernel.puts("Please enter the first number")
num_1 = Kernel.gets().chomp()    

Kernel.puts("Please enter the second number")
num_2 = Kernel.gets().chomp()   

Kernel.puts("what's the operation you want to perform? 1) addition 2) subtraction 3) multiply 4) division")
operation = Kernel.gets().chomp()

if operation == '1'
  result = num_1.to_i() + num_2.to_i()

elsif operation == '2'
  result = num_1.to_i() - num_2.to_i()

elsif operation == '3'
  result = num_1.to_i() * num_2.to_i()

else operation == '4'
  result = num_1.to_f() / num_2.to_f()
end 

  Kernel.puts("Your answer is #{result}!")







