=begin

Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.


input: integer
output: string
rules: - string should always start with 1

algorithm:
given number of times we should print out 1's and 0's



=end

def stringy(number, first = '0')
  string = ''
  second = '0'
  
  if first == '0'
    first = '0'
    second = '1'
  end
  
  number.times do |_|
    string << first
    string << second
  end
  string[0,(string.length/2)]
end

puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'