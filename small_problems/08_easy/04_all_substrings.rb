=begin

All Substrings
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. 
Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

Copy Code

=end

def substrings(string)
  result = []

  0.upto(string.length - 1) do |index|
    1.upto(string.length - index) do |length| 
      result << string[index, length]
    end
  end
  
  p result
end

# my substrings method
def substrings(str)
  sub_str = []
  outer_index = 0
  loop do
    inner_index = 1
    loop do 
      sub_str << str[outer_index, inner_index]
      inner_index += 1
      break if inner_index > str.length - outer_index
    end
    outer_index += 1
    break if outer_index >= str.length
  end
  sub_str
end



substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# #]