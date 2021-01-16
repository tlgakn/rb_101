# Right Triangles
# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

=begin
  
  input: integer
  output: empty space and asterix sign
  rules: - the method takes a positive integer
         - 
         
  algorithm
  - need to create two loops
    one loop for the empty space (beginning with n number and decending)
      puts the empty space
    the other loop for the asterix sign incrementing until number n is reached
      puts "*"
  
=end

def triangle(number)
  asterix = "*"
  empty_line = " "
  index = 1
  number_of_empty_spaces = number - 1
  loop do 
    puts "#{empty_line * number_of_empty_spaces}#{asterix*index}"
    index += 1
    number_of_empty_spaces -= 1
    break if index > number
  end
end
  
  # Examples:
  
  p triangle(5)
  
  #     *
  #    **
  #   ***
  #  ****
  # *****
  
  # triangle(9)
  
  #         *
  #        **
  #       ***
  #      ****
  #     *****
  #    ******
  #   *******
  #  ********
  # *********
