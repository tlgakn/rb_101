# Swap Case
# Write a method that takes a string as an argument 
# and returns a new string in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. 
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.



# Example:

#my solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char.downcase == char
      char.upcase
    elsif
      char.upcase == char
      char.downcase
    else
      char
    end
  end
  characters.join
end

# second time
def swapcase(string)
  swapped = string.chars.map do |char|
    if char.match(/[a-z]/)
      char.upcase
    else
      char.downcase
    end
  end
  swapped.join
end

# LS Solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
