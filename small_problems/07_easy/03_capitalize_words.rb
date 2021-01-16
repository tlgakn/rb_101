# Capitalize Words
# Write a method that takes a single String argument 
# and returns a new string that contains the original value of the argument 
# with the first character of every word capitalized 
# and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

=begin

  input: string of characters
  output: a new string of characters with every word capitalized
  
  algorithm
  - 
  -

=end

# Examples

# def word_cap(string)
#  array_of_words = string.split

  
#  array_of_words.each do |word|
#     word.capitalize!
#   end.join(" ")

# end

def word_cap(string)
  array_of_words = string.split

  
  array_of_words.each do |word|
    word.capitalize!
  end
  array_of_words.join(" ")
end
  
  
# def word_cap(string)
#   string = string.downcase
  
#   array_of_indexes = []
  
#   string.each_char.with_index do |char, index|
#     array_of_indexes << index if char =~ /[ ]/
#  end
  
#   array_of_indexes.map! do |index|
#     string[index + 1] = string[index + 1].upcase
#   end
    
#   string[0] = string[0].capitalize!
  
#   string
# end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
