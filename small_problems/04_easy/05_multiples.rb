=begin

Multiples of 3 and 5
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

=end

# my solution
def multisum(number)
  sum = 0
  number.downto(3) do |num|
    if num % 3 == 0
      sum += num
    elsif num % 5 == 0
      sum += num
    end
  end
  sum
end

  # LS solution
def multiple?(number, divisor)
  number % divisor == 0
end
  
def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
  
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168