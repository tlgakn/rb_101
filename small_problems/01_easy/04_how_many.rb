# How Many?

# Write a method that counts the number of occurrences of each element in a given array.
  
=begin

algo:
- initilaize an empty hash
- iterate through the hash with each method
- save the value in the hash[vehicles] if it occurs one
  if it occurs more than one += it
  

=end


# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# Copy Code
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  hash = {}
  
  vehicles.each do |vehicle|
    if hash.include?(vehicle)
      hash[vehicle] += 1
    else
      hash[vehicle] = 1
    end
  
  end
  
  hash.each do |key, value|
    puts "#{key} => #{value}"
end

count_occurrences(vehicles)
