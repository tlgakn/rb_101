=begin

Odd Lists

Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
The values in the returned list should be those values that are in the 
1st, 3rd, 5th, and so on elements of the argument Array.

Examples:


=end

#1st way
def oddities(array)
  array.map.with_index do |el,idx|
    el if idx.even?
  end.compact
end
  
#2nd way
def oddities(array)
  odd_elements = []
  index = 0
  loop do
      break if index == array.length
      odd_elements << array[index] if index.even?
      index += 1
  end
  odd_elements
end
  
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []