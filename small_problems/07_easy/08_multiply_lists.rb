# Multiply Lists
# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
 # and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
# You may assume that the arguments contain the same number of elements.

# Examples:

# Copy Code


def multiply_list(array1, array2)
  new_array = []
  
  index = 0
  loop do 
    break if index == array1.length
    new_array << array1[index] * array2[index]
    index += 1
  end
  new_array
end

def multiply_list(array1, array2)
  array1.map.with_index do |_, index|
    array1[index] * array2[index]
  end
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end
  
# second time
def multiply_list(arr1, arr2)
  zipped = arr1.zip(arr2)
  zipped.map do |arr|
    arr.reduce(:*)
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
