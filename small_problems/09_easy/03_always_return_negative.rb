=begin
Always Return Negative

Write a method that takes a number as an argument. 
If the argument is a positive number, return the negative of that number. 
If the number is 0 or negative, return the original number.


- make a look up constant for positive integers beginning of 0 [array]
- pass the number and chek

  if positive and 0 
    return * -1
  else
    return number

=end

def negative(number)
  if number.positive?
    return number * -1
  else
    number
  end
end
  
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby