# Lettercase Counter
# Write a method that takes a string, 
# and then returns a hash that contains 3 entries: 
# one represents the number of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

=begin
  
  input: string of characters
  output: hash (key value pairs)
  rules: - just the alphabetic characters counts the others are in neither
  
  algo
  - create an empty hash 
  - make two constants for LOWERCASE and UPPERCASE characters
  - assign the 3 keys give in the problem
  - convert it to an array
  - iterate through the array 
  - check if the letter is in LOWERCASE or UPPERCASE chars, if not save it to neither
  

=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string_of_characters)
  
  my_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string_of_characters.chars.each do |char|
    
    if LOWERCASE.include?(char)
      my_hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      my_hash[:uppercase] += 1
    else
      my_hash[:neither] += 1
    end
    
  end
  my_hash
end

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

# second time
def letter_case_count(string)
  
  count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.each do |char|
    if char =~ /[a-z]/
      count_hash[:lowercase] += 1
    elsif char =~ /[A-Z]/ 
      count_hash[:uppercase] += 1
    else
      count_hash[:neither] += 1
    end
  end
  count_hash
end

# third time
def letter_case_count(string)
  letter_count = {lowercase: 0, uppercase: 0, neither: 0}
  
  string.chars.each do |char|
    if char.match(/[^a-zA-Z]/)
      letter_count[:neither] += 1
    elsif char.upcase == char
      letter_count[:uppercase] += 1
    else
      letter_count[:lowercase] += 1
    end
  end
  letter_count
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
