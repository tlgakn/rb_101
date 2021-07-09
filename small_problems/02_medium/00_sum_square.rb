# my solution
def sum_square_difference(number)
  sum = 0
  square = 0
  
  1.upto(number) do |num|
    sum += num
    square += num*num
  end
  
  sum**2 - square
end

# ls solution
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end