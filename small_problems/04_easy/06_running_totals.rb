=begin

Running Totals

Write a method that takes an Array of numbers, 
and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

=end

# my solution
def running_total(array)
  aku = 0
  array.map do |int|
    aku += int
  end
end

# ls solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
  
# further exploration (solving with each_with_object method)
def running_total(array)
  sum = 0
  array.each_with_object([]) do |el, new_array|
    new_array << sum += el
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []