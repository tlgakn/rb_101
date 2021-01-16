# Practice Problem 7
# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex: output { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# Solution
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

-------------------------------------------------------------------------------------------------------------------------

# Practice Problem 8

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#output 1 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# output 1 2

-------------------------------------------------------------------------------------------------------------------------

# Practice Problem 9

# As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize. 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. 
# For example, the string:
words = "the flintstones rock"

# would be:
# words = "The Flintstones Rock"

# question: Write your own version of the rails titleize implementation.

# Solution
words_array = words.split

capitalize = words_array.each do |word|
  if word[0] then word.capitalize!
  else
    word
  end
end.join(' ')

p capitalize

-----------------------------------------------------------------------------------------------------------------------

# Practice Problem 10
# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key 
# that has one of three values describing the age group the family member is in (kid, adult, or senior). 
# Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Solution

munsters.each do |name, details|
    case details["age"]
    when 0...18
      details["age_group"] = "kid"
    when 18...65
      details["age_group"] = "adult"
    else
      details["age_group"] = "senior"
    end
  end
