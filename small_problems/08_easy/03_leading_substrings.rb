=begin

Leading Substrings

Write a method that returns a list of all substrings of a string 
that start at the beginning of the original string. 
The return value should be arranged
in order from shortest to longest substring.

  algorithm
  - look up each char with chars or split method
  - save them into new array 
    new_array[0] new_array[0+1] new_array[0 + 1 + 2] ...(maybe Integer#upto method will be     useful )
  - return the new array  


Examples:

Copy Code

=end

def leading_substrings(string)
  leading_array = []
  index = 0
  loop do
    leading_array << string[0..index]
    index += 1
    break if index == string.length
  end
  leading_array
end

# second time
def leading_substrings(string)
  array = []
  0.upto(string.length - 1) do |length|
    array << string[0..length]
  end
  array
end

# third time 
def leading_substrings(str)
  sub_str = []
  index = 0
  loop do 
    sub_str << str[0..index]
    index += 1
    break if index >= str.length
  end
  sub_str
end

# ls solution
def leading_substrings(string)

  result = []
  0.upto(string.length - 1) do |index|
    result << string[0..index]
  end
  
  result
end
  
  
p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']