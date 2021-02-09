=begin
Letter Counter (Part 1)
Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

1- iterate over the words
2- initialize an empty hash
3- during iteration count the chars and add them to hash values
4- return the hash
=end

# my solution
def word_sizes(text)
  letter_count = Hash.new(0)
  
  text.downcase.split.each do |word|
    letter_count[word.size] += 1
  end
  letter_count
end

# LS Solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
