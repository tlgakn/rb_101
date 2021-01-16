=begin

Searching 101
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

algo
1. get 6 numbers from the user
2. save the numbers in an empty array
   check if the last_number is included in the array 
    if yes 
      print out that it appears in the array
    else
      print out that it does not appear in the array

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

=end


def prompt(message)
  puts "==> #{message}"
end
  
numbers_array = []

prompt("Enter the 1st number:")
numbers_array << gets.chomp.to_i
prompt("Enter the 2nd number:")
numbers_array << gets.chomp.to_i
prompt("Enter the 3rd number:")
numbers_array << gets.chomp.to_i
prompt("Enter the 4th number:")
numbers_array << gets.chomp.to_i
prompt("Enter the 5th number:")
numbers_array << gets.chomp.to_i
prompt("Enter the last number:")
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}"
else
  puts "The number #{last_number} does not appear in #{numbers_array}"
end
