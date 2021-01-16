# Sum of Sums
# Write a method that takes an Array of numbers 
# and then returns the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

# Examples:

# Copy Code

def sum_of_sums(integer_array)
  sum = 0 

  integer_array.each_with_index do |_, index|
    sum = integer_array[0..index].sum
    sum += sum
  end
  p sum
end

def sum_of_sums(array_of_integers)
  total = 0

  array_of_integers.each_with_index  do |_, index|
    current_sum = array_of_integers[0..index].sum
    total += current_sum
  end

  total
end

def sum_of_sums(numbers)

  sum_total = 0
  accumulator = 0
  
  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end
  
  sum_total
end

def sum_of_sums(numbers)
  sum_total = 0
  
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end

  sum_total
end

p sum_of_sums([3, 5, 2]) == (21)
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
