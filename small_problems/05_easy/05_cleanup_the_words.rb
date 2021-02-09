=begin

Clean up the words
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

=end

# my original solutiin with Regex
def cleanup(string)
  array = string.chars
  
  array.each do |chr|
    chr.gsub!(/[^a-z]/, ' ')
  end.join.squeeze
  
end

# Further Exploration (without using Regex)
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_text = []
  text.chars.each do |chr|
    if ALPHABET.include?(chr)
      clean_text << chr
    else
      clean_text << " "
    end
  end
    clean_text.join.squeeze
end

# LS Solution

# Solution 1
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# Solution 2
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
