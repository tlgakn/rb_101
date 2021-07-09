=begin

Multiply All Pairs
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

Copy Code

=end

# def multiply_all_pairs(array1, array2)
#   sorted_array = array1.map.with_index do |_, index|
#     array1[index] * array2[index]
#   end
#   p sorted_array
# end

# my solution
def multiply_all_pairs(array1, array2)
  sorted_array = []
  array1.each do |number|
    array2.each do |num|
      sorted_array << number * num
    end
  end
  sorted_array.sort
end
  
  
#LS Solution
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

# second time
def multiply_all_pairs(arr1, arr2)
  multiplied = []
  arr1.each do |num1|
    arr2.each do |num2|
      multiplied << num1 * num2
    end
  end
  multiplied.sort
end
  
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
