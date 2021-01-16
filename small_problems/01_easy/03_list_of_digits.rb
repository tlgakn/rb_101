# List of Digits
# Write a method that takes one argument, 
# a positive integer, 
# and returns a list of the digits in the number.

=begin

  input: integer
  output: integer array
  
  algo:
  - convert the integers to string and then,
  - to array with chars or split method
  - save them in an array
  - iterate throughthe array and return it to integers
  

=end


def digit_list(integer)
  integer_array = integer.to_s.chars
  new_array = []
  
  integer_array.map do |int|
    new_array << int.to_i
  end
  new_array
end

# # Examples:

#   puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#   puts digit_list(7) == [7]                     # => true
#   puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#   puts digit_list(444) == [4, 4, 4]             # => true


# How Many?
# Write a method that counts the number of occurrences of each element in a given array.



  
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
