=begin
Alphabetical Numbers

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

algo
1- 

=end

# My solution

# NUMBERS_HASH = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen).zip(0..19).to_h

# def alphabetic_number_sort(array_of_num)
#   sorted_arr = NUMBERS_HASH.sort_by { |k,v| k}
#   sorted_arr.map do |arr|
#     arr.pop
#   end
# end

#LS Solution

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort((0..19).to_a) #== [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]
