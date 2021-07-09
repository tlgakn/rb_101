# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

=begin

input: 3 integers
output: symbol

rules:  To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.


equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length


algorithm
- inputs are num1 num2 and num3
- all numbers has to be greater than 0
  if any num < 0 return :invalid
- put the numbers into an array
- sort the array in an increasing order
- the sum of the two shortest has to be greater than third one
- if all nums are equal ==> :equilateral
- if 2 nums are equal ==> :isosceles
- if 3 nums are different ==> :scalene


=end

# Examples:

# def triangle(num1, num2, num3)
#   num_array = [num1, num2, num3]
  
#   sorted_array = num_array.sort
#   idx = 2
#   return :equilateral if (sorted_array.sum/sorted_array.length) == sorted_array[idx]
#   return :scalene if sorted_array.uniq == sorted_array
#   return :invalid if sorted_array.any? { |num| num == 0 }
  
#   index = 0
#   if (sorted_array[index] + sorted_array[index + 1]) < sorted_array[index + 2]
#     return :invalid
#   end
  
#   return :isosceles if sorted_array.uniq.size == 2
  
# end


def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end


def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if (sides[0] + sides[1]) <= sides[2]
  case sides.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
