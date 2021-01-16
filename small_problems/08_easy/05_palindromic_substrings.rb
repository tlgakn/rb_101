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

# this method iterates through every character, every time beginning from 0 index ex: a,ab,abc..
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
  
  # this method iterates through every character and when one iteration is ended, next time it goes to second character and so on.. ex: a,ab,abc,abcd,
                          # b,bc,bcd...
                          # until one character is left (it prints also the last character)
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end
  
  # def reverse(string)
  #   string.reverse == string
  # end
  
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
  

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada'] # m,ma,mad,mada,madam,
                                            # a,ad,ada,adam
                                            # d, da,dam
                                            # a, am
                                            # m
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
