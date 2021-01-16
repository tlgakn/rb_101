# Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method.
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

=begin

  algo
  - to acces the last element index in the array [list.length - 1]
    1 will be the starting index
    increment the index every time
    until
    when array.empty?
    list = [1,2,3,4] == [4,3,2,1]
    list[0] == [list.length -1]
    list[1] == [list.length -2]
    list[2] == [list.length -3]
    ....
    
    left_index = 0
    right_index = 1
    
    

=end

# def reverse!(array_of_elements)
#   left_index = 0
#   right_index = 1
#   reversed_array = []
#   loop do 
#     reversed_array[array_of_elements.length-right_index] = array_of_elements[left_index]
#     left_index += 1
#     right_index += 1
    
#     break if array_of_elements.length - right_index < 0
    
#   end
#   p reversed_array
#   p array_of_elements
# end

def reverse!(array_of_elements)
  return [] if array_of_elements.empty?
  holder_array = []
  
  loop do
    holder_array << array_of_elements.pop
    break if array_of_elements.empty?
  end
  
  
  loop do
    array_of_elements << holder_array.shift
    break if holder_array.empty?
  end
  array_of_elements
end


def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end



list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id


list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
