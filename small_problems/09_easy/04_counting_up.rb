=begin

Counting Up

Write a method that takes an integer argument, 
and returns an Array of all integers, 
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

Copy Code
=end

# def sequence(number)
  
#   array_of_numbers = []
#   loop do
#     break if number == 0
#     array_of_numbers << number
#     number -= 1
#   end
#   array_of_numbers.reverse
# end

def sequence(number)
  array_of_numbers = []
  
  1.upto(number) do |num|
    array_of_numbers << num
  end
  
  array_of_numbers
  
end

def sequence(number)
  (1..number).to_a
end
  
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
