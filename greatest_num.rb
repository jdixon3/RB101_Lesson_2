

# start

# input = a method with two integers
# output = return the sum of the integers

# create method with two parameters
# create local variable add equal to first argument + second argument

# print method

# end 

# def sum(a, b)
#   add = a + b
# end 

# p sum(1, 1)


# start

# input = an array of strings
# output = one string that is all the strings concatenated together

# create method string with one parameter
# create local variable with a call of .split to the parameter


# end 



# def string(sentence)
#   sentence.split.join
# end

# p string('hello world')

# start

# input = array of integers
# output = new array with every element

# - create method with one parameter

array = ['one', 'two', 'three', 'four']

array.each_with_index do |num, index|
  next if index.odd?
  puts num
end 

