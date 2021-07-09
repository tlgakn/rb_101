=begin
Double Char (Part 1)
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

Copy Code
=end

def repeater(string)
  doubled_chars = []
  
  string.chars.each do |char|
    doubled_chars << char*2
  end
  doubled_chars.join

end

# second time
def repeater(string)
  result = ''
  string.chars.each do |idx|
    result << string[idx] * 2
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
