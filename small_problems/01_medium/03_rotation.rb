=begin
Rotation (Part 3)
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

1. 735291 => 352917
2. 

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


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

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) # 
#   all_digits.join.to_i
# end

# Rona's Solution
def max_rotation(orig_number)
  current_rotated_number = orig_number
  x = orig_number.digits.size
  loop do
    current_rotated_number = rotate_rightmost_digits(current_rotated_number, x)
    x -= 1
    break if x == 0
  end
  
  current_rotated_number
end

# LS Solution
def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

