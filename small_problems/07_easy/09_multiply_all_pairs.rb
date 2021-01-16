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
  p sorted_array.sort
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

  # Student solution
  def multiply_all_pairs(array1, array2)
  new_arr = []
  counter1 = 0 
  loop do
    counter2 = 0
    loop do
    new_arr << array1[counter1] * array2[counter2]
    counter2 += 1
    break if counter2 == array2.size
    end
  counter1 += 1
  break if counter1 == array1.size
  end
  new_arr.sort
end
  
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
