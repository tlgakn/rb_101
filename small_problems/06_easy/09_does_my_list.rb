# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. 
#This method should return true if the search value is in the array, 
#false if it is not. 
#You may not use the Array#include? method in your solution.

# Copy Code

=begin

  input: (array of integers, integer)
  output: boolean
  rules:
      explicit: 
      - you may not use array#include method
      - nil and nil returns true
      - empty array returns false
      
  algo
  - iterate through the array with a basic loop 
  - check with array index if array_of_integers[index] == integer
    if yes return true
    false otherwise
    

=end



def include?(array_of_integers, integer)
  array_of_integers.each do |num|
    return true if num == integer
  end
  false
end

# Second approach
def include?(array, value)
  array.any? { |el| value == el ? true : false }
end

# third time my solution
def include?(array, num_to_search)
  return false if array.length == 0
  index = 0
  loop do
    if array[index] == num_to_search
      return true
    end
    index += 1
    break if index >= array.length
  end
  false
end
  
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
