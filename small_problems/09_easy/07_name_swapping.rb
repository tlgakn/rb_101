=begin
Name Swapping

Write a method that takes a first name, a space, and a last name passed as a single String argument,
and returns a string that contains the last name, a comma, a space, and the first name.

Examples

Copy Code

=end

def swap_name(string)
  swap = string.split.reverse
  swap.each { |word| word }.join(', ')
end
  
p swap_name('Joe Roberts') #== 'Roberts, Joe'
