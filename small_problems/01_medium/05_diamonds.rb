# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.

# Examples

=begin

algorithm
1. 
- first line is always empty space
- begining with 1 star every time +=2 stars is printed "until the given number is reached"in every single line (odd integers) 

2. after the given number is reached -=2 stars is printed 

edge case:
- also be aware of empty space
  


=end
# My Solution
def diamond(number)
 
  empty_space = " " 
  star = "*"
  
  counter_star = 1    
  counter_space = number/2
  until counter_star == number  
    puts "#{empty_space * counter_space}" +  "#{star * counter_star}"
    counter_star += 2
    counter_space -= 1 
  end
  
  
   while counter_star >= 1
    puts "#{empty_space * counter_space}" + "#{star * counter_star}"
    counter_star -= 2
    counter_space += 1
   end
 
end

# LS Solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



diamond(1)

#*

diamond(3)

#  *
# ***
#  *


diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
