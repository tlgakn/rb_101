=begin

Group Anagrams
Given the array...

Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)

input: array of words
output: arrays of anagrams

algorithm:
- iterate through the array of words
- sort the words in alphabetical order
  - converting the string words to array and checking if they all have the same characters
-  if they have the same characters then group them together

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# LS Solution
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

# second time my solution
def group_anagrams(words)

  grouped = words.group_by do |word|
    word.chars.sort.join
  end
  grouped.each_value do |v|
    puts "-----------"
    p v
  end
end

group_anagrams(words)
