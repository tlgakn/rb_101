=begin

How long are you?

Write a method that takes a string as an argument, 
and returns an Array that contains every word from the string, 
to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, 
and that any substring of non-space characters is a word.

Examples

Copy Code

- use split method to convert the string to an array
- iterate through the array with each method 
- save every array word count in a new array (integer values)
  
- and then try to merge these two arrays in an order


=end

# rona's solution
def word_lengths(string)
  array_of_words = string.split

  array_of_words.map do |word|
    "#{word} #{word.size.to_s}"
  end
end

# second time 
def word_lengths(word)
  return_array = []
  word.split.each do |obj|
    return_array << obj + ' ' + obj.length.to_s
  end
  return_array
end
  
  # ls solution
def word_lengths(string)
  words = string.split

  words.map do |word|
    word + ' ' + word.length.to_s
  end
end
  
p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []
