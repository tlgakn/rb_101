# Pseudo-code
# Given a collection of integers.

# Iterate through the collection one by one.
#   - save the first value as the starting value.
#   - for each iteration, compare the saved value with the current value.
#   - if the saved value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwise, if the current value is greater
#     - reassign the saved value as the current value

# After iterating through the collection, return the saved value.

# -------------------------------------------------------------------------------------------------------

# Formal pseudo-code
# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END

# Code
# def find_greatest(numbers)
#     saved_number = nil
  
#     numbers.each do |num|
#       saved_number ||= num  # assign to first value
#       if saved_number >= num
#         next
#       else
#         saved_number = num
#       end
#     end
  
#     saved_number
# end
  
  
  # 1. a method that returns the sum of two integers (LS assignments at the end of lecture)
=begin

pseudo code
  # a method that returns the sum of two integers

  - ask the user to enter two numbers
  - save the numbers as variables (number1 and number2) and also call to_i on the variables
  - sum up two numbers
  - display the result
  
formal psuedo code
  START
  #a method that returns the sum of two integers
  
  GET number1
  SET number1
  GET number2
  SET number 2
  SET result = number 1 + number2
  PRINT result 
=end

# edge cases: this code can be improved by checking if a num is valid or not
  # Code (1)
# puts "Please enter a number"
# number1 = gets.chomp        
# puts "Please enter the second number"
# number2 = gets.chomp
# result = number1.to_i + number2.to_i
# puts "#{number1} + #{number2} is #{result}"

# -------------------------------------------------------------------------------------------------------------------------

# 2. a method that takes an array of strings, 
#    and returns a string that is all those strings concatenated together

=begin
# pseudo code

- array of strings
- concatenate all the strings together

input = ['a','b','c','d']
output = 'abcd'

#my answer
# input = ['a','b','c','d']
# output = 'abcd'

array = ['a','b','c','d']

string = ''
array.each do |el|
  string << el
end.join

p string
=end

# ---------------------------------------------------------------------------------------------------------------------------------------------

# 3.    a method that takes an array of integers, 
#       and returns a new array with every other element

=begin

# pseudo-code

Iterate through the collection one by one
    - check the current index of the element
    - if index.even? 
        element
    - else
        next
    - use map to return a new array

# code

def every_other_int(array)
  new_array = []
  
  array.each.with_index do |el, index|
    if index.even?
      new_array << el
    else
      next
    end
  end
  new_array
end

p every_other_int([1,2,3,4,5,6,7,8,9,10,11,12,13])

=end
