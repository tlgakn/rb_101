# Multiplicative Average
# Write a method that takes an Array of integers as input, 
# multiplies all the numbers together, 
# divides the result by the number of entries in the Array, 
# and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples:

# Copy Code

def show_multiplicative_average(array_of_numbers)
  return format('%.3f', array_of_numbers[0]) if array_of_numbers.size == 1
  multiplied_numbers = 1
  index = 0
  while index <= array_of_numbers.length - 1
    multiplied_numbers *=  array_of_numbers[index] 
    index += 1
  end
  divided_numbers = multiplied_numbers / array_of_numbers.length.to_f
  divided_numbers = format('%.3f',divided_numbers)
end
  
# second time
def show_multiplicative_average(arr)
  multiple = arr.reduce(:*)
  result = multiple / arr.length.to_f
  format('%.3f',result)
end
  
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667