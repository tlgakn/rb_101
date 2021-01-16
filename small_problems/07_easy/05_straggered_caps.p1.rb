 # Staggered Caps (Part 1)
# Write a method that takes a String as an argument, 
# and returns a new String that contains the original value using a staggered capitalization scheme 
# in which every other character is capitalized, 
# and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, 
# but count as characters when switching between upper and lowercase.

=begin

  input: string of characters
  output: new string of characters used staggered caps
  rules: - every other character should be capitalized
         - and the remaining is lowercase
         - non letters should stay same
         - non letters will be counted as well (so it effects the entire string)
         
    
  
=end

# Example:

def staggered_case(string_of_characters)
  straggered_caps_array = string_of_characters.chars.map.with_index do |char, index|
    if index % 2 == 0
      char.upcase
    else
      char.downcase
    end
  end
  straggered_caps_array.join
end
  
# Copy Code
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'