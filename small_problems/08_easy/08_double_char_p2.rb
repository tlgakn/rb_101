
=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

Copy Code
=end

# def repeater(string)
#   string.chars.map do |char|
#     char*2
#   end.join
# end

=begin

Double Char (Part 2)
# Write a method that takes a string, 
# and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

Copy Code

=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(string)
  
  string.chars.map do |char|
    
    if CONSONANTS.include?(char)
      char * 2
    else
      char
    end
  end.join
  
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""




