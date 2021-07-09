=begin
# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
# The return value should be arranged in the same sequence as the substrings appear in the string. 
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; 
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
# In addition, assume that single characters are not palindromes.

  input: string of characters
  output: array of palindromic substrings
  rules: 
        - all substring pay attention to case
        - single characters are not palindromes
        - if no substring is found, empty array will be returned
        - duplicate palindromes should be included multiple times.
        - nonaplhabetic characters are also included to palindromes
        
        
  algorithm
  - have two working methods need to implement them to find the palindromes
  - can check a word with reverse method if it is palindrome
  - if yes push it to new collection palindrome_array (create this empty collection first)
  

# Examples:

# Copy Code

=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  palindrome_strings = []
  
  array_of_chars = substrings(string)
  
  array_of_chars.each do |char|
    if char.length == 1
      next
    elsif char.reverse == char
      palindrome_strings << char
    end
  end
  palindrome_strings
end



# second time
=begin
Palindromic Substrings
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:

is_palindrome? 
- define the method if the substrings are palindrome


=end


def substrings(string)
  result = []
  0.upto(string.length - 1) do |index|
    1.upto(string.length - index) do |length|
    result << string[index,length]
    end
  end
  result
end

def is_palindrome?(string)
  return false if string.size < 2
  string == string.reverse
end

def palindromes(string)
  substrings = substrings(string)
  
  palindromes = []
  
  substrings.each do |sub_str| 
    if is_palindrome?(sub_str)
      palindromes << sub_str
    end
  end
  palindromes
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
  
