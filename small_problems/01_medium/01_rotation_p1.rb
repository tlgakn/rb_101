=begin

Rotation (Part 1)
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

input: array
output: same array rotated
rules: - original array should not be modified
       - if there is only one element in the array, then it has to be returned
       
algorithm
- iterate through the array
- array index 0 should be moved to the end of the array


=end

#my solution
# def rotate_array(array)
#   new_array = []
#   new_array << array[1..-1] << array[0]
#   new_array.flatten
# end

# LS Solution
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# further exploration (student solution)
def rotate_array(ary)
  ary[1..-1] + [ary[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']


x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                # => true

#p rotate_string("hello world")

