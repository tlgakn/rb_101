=begin
Palindromic Strings (Part 1)
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
A palindrome reads the same forward and backward. 
For this exercise, case matters as does punctuation and spaces.

Examples:


=end

def palindrome?(string)
  if string.reverse == string
    return true
  else
    false
  end
end
  
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true