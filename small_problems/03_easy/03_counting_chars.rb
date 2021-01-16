=begin

Counting the Number of Characters

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input:

Copy Code
Please write word or multiple words: walk
output:

Copy Code
There are 4 characters in "walk".
input:

Copy Code
Please write word or multiple words: walk, don't run
output:

Copy Code
There are 13 characters in "walk, don't run".

=end

#LS solution
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."


# student solution
print "Please write a word or multiple words: "
words = gets.chomp
chars_no_spaces = words.chars.select {|char| char != " "}
puts "There are #{chars_no_spaces.length} in \"#{words}\"."


# student solution (with gsub)
puts "Please write word or multiple words:"
words = gets.chomp
char_counter = words.gsub(" ", "").size
puts "There are #{char_counter} in '#{words}'"
