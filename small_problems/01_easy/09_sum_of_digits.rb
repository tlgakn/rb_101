=begin

Sum of Digits

Write a method that takes one argument, a positive integer, and       returns the sum of its digits.

=end

def sum(int)
  int.digits.reduce(:+)
end
  
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
