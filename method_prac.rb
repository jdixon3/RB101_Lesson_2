# variables as pointers

# a = [1, 2, 3, 3]
# b = a
# c = a.uniq!

# p a 
# p b
# p c

# def test(b)
#   b.map! do |letter|
#     "I like the letter: #{letter}!"
#   end 
# end 

# a = ['a', 'b', 'c']
# puts test(a)

# puts "what are your three favorite numbers?"
# answer = gets.chomp
# arr_answer = [] << answer

# def fav_nums(num)
#   num.map do |int|
#     "My favorite numbers are: #{int}!"
#   end 
# end 

# nums = [1, 2, 3]
# puts fav_nums(nums)

# blocks and procs

# def block_and_proc(num, &block)
#   block.call(num)
# end 

# number = 51
# block_and_proc(number) do |int|
#   puts "Block being passed in the method: #{int}!"
# end 

# procs

# talk = Proc.new do 
#   puts "I am talking"
# end 

# talk.call  

# talk = Proc.new do |name|
#   puts "I am talking to #{name}."
# end 

# talk.call("Wes")

# def take_proc(proc)
#   [1, 2, 3, 4, 5].each do |num|
#     proc.call num
#   end 
# end

# proc = Proc.new do |number|
#   puts "#{number}: Proc being called in the method!"
# end 

# take_proc(proc)

# names = ['bob', 'joe', 'steve', nil, 'frank']

# names.each do |name|
#   begin
#     puts "#{name}'s name has #{name.length} letters in it."
#   rescue 
#     puts "ooopsy poopsy"
#   end
# end 

# zero = 0
# puts 'before each call'
# zero.each { |element| puts element } rescue puts "Can't do that."
# puts "After each call"

# def divide(number, divisor)
#   begin
#     answer = number / divisor
#     puts answer
#   rescue ZeroDivisionError => e
#     puts e.message
#   end
# end 

# divide(4, 3)
# divide(5, 0)
# divide(8, 4)

# def greet(person)
#   puts "Hello " + person
# end 

# greet('wes')
# greet(1)

# def space_out_letters(person)
#   return person.split("").join("")
# end 

# def greet(person)
#   return "h e l l o, " + space_out_letters(person)
# end

# def decorate_greeting(person)
#   puts "" + greet(person) + ""
# end 

# decorate_greeting("wes")
# decorate_greeting(1)


# def check_chars(word)
#   if /lab/ =~ word
#     puts word
#   else    
#     puts 'no match'
#   end 
# end 

# check_chars('laboratory')
# check_chars('experiment')
# check_chars('elaborate')
# check_chars('polar bear')

# exception handling is a way to account for errors in data that is used within \ 
# your code base.  ex, nil within an array. it is a way of handling the error by \ 
# changing the flow of control without exiting the program. 

# def execute(&block)
#   block.call
# end

# execute { p "Hello from inside the execute method!" }


# def fix(value)
#   puts "initial object #{value.object_id}"
#   value = value.upcase
#   puts "upcased object #{value.object_id}"
#   value.concat('!')
# end

# s = 'hello'
# puts s
# puts "original object #{s.object_id}"
# t = fix(s)
# puts t
# puts "final object #{t.object_id}"

# def fix(value)
#   value << 'xyz'
#   value.upcase!
#   value.concat('!')
# end 


# s = 'hello'
# puts s
# t = fix(s)
# puts s

# puts "Object ID for t: #{t.object_id}"
# puts "Object ID for s: #{s.object_id}"

# def river(name)
#   name = name.upcase!
#   name.concat('!')
# end 


# river_name = 'sky'
# river_proper = river(river_name)

# puts river_name
# puts river_proper

# puts "river_name ID #{river_name.object_id}"
# puts "river_proper ID #{river_proper.object_id}"

# s = '   hey   '
# puts s
# puts "   #{s.object_id}"

# puts s.strip
# puts s.object_id

# def roomate(name)
#   name.concat("!")
# end 

# wife = 'kelsey'
# friend = roomate(wife)
# puts friend
# puts "friend ID #{friend.object_id}"
# puts wife
# puts "wife ID #{wife.object_id}"

# def fix(value)
#   value[1] = 'x'
#   value
# end 

# s = 'abc'
# t = fix(s)

# p s
# p s.object_id 
# p t 
# p t.object_id

# a = %w(1 2 3)
# puts a.object_id
# puts a[1].object_id
# p a

# a[1] = 1000

# puts a.object_id
# puts a[1].object_id
# p a

# def increment(x)
#   x += 'z'
# end 

# y = 'a'
# puts y.object_id
# puts increment(y)
# puts y 
# puts y.object_id

# def plus(x, y)
#   x = x + y 
# end 

# a = 3
# b = plus(a, 2)
# puts a
# puts b    

# def uppercase(value)
#   value.upcase!
# end 

# name = 'william'
# uppercase(name)
# puts name #As you can see .upcase is modifying name through value (the parameter in the method call, aka alias)

# def print_id(number)
#   puts "In the method object id = #{number.object_id}"
# end 

# value = 33
# puts "Outside the method object id = #{value.object_id}"
# print_id(value)

# def add_name(arr, name)
#   arr = arr + [name]
# end 

# names_array = %w( wes joe )

# p add_name(names_array, 'kelsey')
# p names_array

# def total(num1, num2)  #do not do this!  This will display the output and return nil
#   puts num1 + num2 
# end 

# def total(num1, num2) #better
#   num1 + num2
# end 

# def append(array1, array2) #mutating the passed in array because of << 
#   array1 << array2
# end 

# name = 'johnson'

# %w(wes kelsey zach).each do |first_name| 
#   name = first_name
# end 

# puts name

# def car(new_car)
#   make = make(new_car)
#   model = model(new_car)
#   [make, model]
# end

# def make(new_car)
#   new_car.split(" ")[0]
# end

# def model(new_car)
#   new_car.split(" ")[1]
# end

# make, model = car("Ford Mustang")
# make == "Ford"         
# model.start_with?("M")


# def extend_greeting(greeting)
#   greeting + " there"
# end

# greeting = "hi"
# puts extend_greeting(greeting)

# - now iterate through the remaining words with .each
#   - use .

# def prompt(message)
#   puts("=> #{message}")
# end 

# prompt("Please enter a sentence made up of several words.")
# sentence = gets().chomp()

# words = sentence.split
# saved_word = words.shift

# words.each do |word|
#   if word.length >= saved_word.length 
#     saved_word = word
#   end 
# end

# prompt(saved_word)

# def extend_greeting(greeting)
#   greeting + " there"
# end

# greeting = "hi"
# greeting = extend_greeting(greeting)

# puts greeting

# def name 
#   "Wes"
# end 

# name = "kelsey"

# def display_name
#   puts name
# end 

# display_name

def name
  "George"
end

name = "Lisa"

loop do 
  puts name
  break
end
