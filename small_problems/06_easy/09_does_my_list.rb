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

# def include?(array_of_integers, integer)
  
#   index = 0
#   return false if array_of_integers.empty?
  
#   loop do 
    
#     if array_of_integers[index] == integer
#       return true
#     elsif array_of_integers[index] == nil && integer == nil
#       return true
#     else
#       index += 1
#       break false if array_of_integers.size == index
#       next   
#     end
#   end 
# end
  

def include?(array_of_integers, integer)
  array_of_integers.each do |num|
    return true if num == integer
  end
  false
end
  
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false