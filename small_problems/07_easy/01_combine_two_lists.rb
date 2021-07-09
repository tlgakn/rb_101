# Combine Two Lists
# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both Array arguments, 
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

=begin

  input:  (array_of_integers, array_of_strings)
  output: one array mixed of integers and strings (in order)
  rules: 
        - return a new array
        - that array should contain all elements
        - the arrays are not empty
        - arrays have the same number of elements
  
  algo
  - 
=end

# Copy Code

# my solution
def interleave(array_of_integers, array_of_strings)
  new_array = []
  loop do
    new_array << array_of_integers.shift
    new_array << array_of_strings.shift
  
    break if array_of_integers.empty?
  end
  new_array
end

# my solution second time
def interleave(array1, array2)
  combined_array = []
  index = 0
  
  loop do
    break if index >= array1.length
    combined_array << array1[index]
    combined_array << array2[index]
    index += 1
  end
  combined_array
end

# my solution third time
def interleave(arr1, arr2)
  new_arr = []
  index = 0
  loop do 
    new_arr << [arr1[index], arr2[index]]
    index += 1
    break if index >= arr1.length
  end
  new_arr.flatten
end

 # student solution
 def interleave(array1, array2)
  result = []
  index2 = 0
  array1.each_with_index do |element, index| # no need to use each_with_index  method here, each method is sufficient
    result << element
    result << array2[index2]
    index2 += 1
  end
  
   result
 end

 #LS Solution
 def interleave(array1, array2)
   result = []
   array1.each_with_index do |element, index|
     result << element << array2[index]
   end
   result
 end



#Further Exploration
def interleave(array1, array2)
  array1.zip(array2).flatten
end
  
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
