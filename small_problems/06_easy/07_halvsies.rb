# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


=begin

  input: an array of integers
  output: nested two arrays of integers
  rules: 
      explicit: - if array of elements are odd. the first array should include the middle one
                - if one element is give it should return same element + an empty array
                - empty array should return empty nested arrays
                
  algo
  - create two empty arrays 
    first array and second array
    
    -seperating the array to nested arrays
    array[index], array[index+1] ...
    
  - iterate through the array and push the first half to first_array 
    and second half to second array 
    

=end


# Anna's solution
def halvsies(array)
  length = array.length
  new_array = []

  if length.odd?
    new_array << array.first(length / 2 + 1)
    new_array << array.last(length / 2)
  else
    new_array << array.first(length / 2)
    new_array << array.last(length / 2)
  end

  new_array
end

# Rona's solution
def halvsies(array_of_integers)
  if array_of_integers.size.odd?
    array_of_integers.partition.with_index do |integer, index|
      index <= array_of_integers.size / 2
    end
  else
    array_of_integers.partition.with_index do |integer, index|
      index < array_of_integers.size / 2
    end
  end
end

# my solution second time
def halvsies(arr)
  index = (arr.length) / 2
  if arr.length.odd?
    [arr[0..index], arr[index+1..-1]]
  else
    [arr[0..index-1], arr[index..-1]]
  end
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # array[[0],[1]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []] 
