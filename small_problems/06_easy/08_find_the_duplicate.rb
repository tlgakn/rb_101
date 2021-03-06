# Find the Duplicate
# Given an unordered array and the information that exactly one value in the array occurs twice 
#(every other value occurs exactly once), how would you determine which value occurs twice? 
#Write a method that will find and return the duplicate value that is known to be in the array.

# Examples:

=begin

  input: array of integers
  output: integer
  rules: 
      explicit: - only one value in the array occurs twice
                - it is an unordered array (the input)
      
  algo
  - create an empty array
  - iterate throught the array 
    during the iteration push the integer to new created empty array 
    if it occurs just once
    if it occurse more than once, this is the integer we are looking for 
    do not stop when you find the duplicate and just push the all integers to the array
  - return the duplicate
  

=end

def find_dup(array_of_integers)
  array_of_integers.each do |integer|
    return integer if array_of_integers.count(integer) == 2
  end
end
  

# second time my solution
def find_dup(arr)
  sorted = arr.sort
  num_arr = sorted.select.with_index do |el, idx|
    current_el = sorted[idx]
    if current_el == sorted[idx + 1]
      current_el
    end
  end
  num_arr[0]
end
  
  
p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
