=begin
Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

Problem:
- move the last integer to the left according to the argument. If the argument is 1, it will return the original number.

Data Structure
- integer
_ array

Examples:
735291, 1 ==> 735291
735291, 2 ==> 735219
735291, 3 ==> 735912
735291, 4 ==> 732915

Algorithm:
- convert the integer to an array
- 

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# Rona's Solution
def rotate_rightmost_digits(orig_number, size_of_slice)
  array_of_digits = orig_number.digits.reverse
  size_of_num = array_of_digits.size
  
  return orig_number if size_of_slice == 1
  return rotate_array(orig_number.digits.reverse).join.to_i if size_of_slice == size_of_num
  
  
  first_half = array_of_digits[0..size_of_num - size_of_slice - 1]
  
  second_half = array_of_digits[size_of_num - size_of_slice..-1] 
  
  new_second_half = rotate_array(second_half)
  
  (first_half + new_second_half).join.to_i
end

# LS Answer
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


 p rotate_rightmost_digits(735291, 1) == 735291
 p rotate_rightmost_digits(735291, 2) == 735219
 p rotate_rightmost_digits(735291, 3) == 735912
 p rotate_rightmost_digits(735291, 4) == 732915
 p rotate_rightmost_digits(735291, 5) == 752913
 p rotate_rightmost_digits(735291, 6) == 352917

