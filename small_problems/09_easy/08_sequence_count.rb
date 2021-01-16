=begin
Sequence Count
Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count argument, 
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.


 algo
 - times method can be useful
 - for the second argument need to acumulate (1, 1+=1, 2+=1 and so on always sum up with itself)
 
 edge case:
 - count arg will be 0 and greater than 0
 - if the count argument is == 0, return an empty array

Copy Code
=end

# not working (tried to solve it with Integer#times method)
def sequence(count, starting_number)
  numbers_array = []
  num = starting_number
  sum = 0
  
  count.times do |num|
    numbers_array << num
    num += sum
  end

  numbers_array
end
  
# my solution
def sequence(count, starting_number)
  return numbers_array if count == 0
  numbers_array = []
  index = starting_number
  sum = 0
  loop do 
    
    numbers_array << starting_number + sum
    sum = starting_number + sum
    
    break if numbers_array.length == count
    
  end
  numbers_array
end
  
#rona's solution
def sequence(count, starting_number)
  return [] if count == 0
  increment = starting_number
  
  result = []
  
  count.times do |_|
    result << increment
    increment += starting_number
  end
  
  result
end
  
# LS Solution 1
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end
  
# LS Solution 2
def sequence(count, first)
  (1..count).map { |value| value * first }
end
  
  

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
