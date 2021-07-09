# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

=begin

- save the string as an array using chars method
- iterate through the array 
  case letter
    if string =~ /[a-z]/
      save it in the hash :lowercase
    elsif string =~ /[A-Z]/
      save it in :uppercase 
    else
      :neither
  end

- calculating the percentage
  (string / length.to_f) * 100

  

=end
# my solution
def letter_percentages(string)
  string_count = { lowercase: 0, uppercase: 0, neither: 0 }
  string_array = string.chars
   
  string_array.each do |char|
    if char =~ /[a-z]/
      string_count[:lowercase] += 1
    elsif char =~ /[A-Z]/
      string_count[:uppercase] += 1
    else
      string_count[:neither] += 1
    end
  end
   
   string_count.map do |k,v|
     [k, (v.to_f / string.size * 100)]
   end.to_h
 end
 
 
 # another student soluiton
 # def letter_percentages(str)
 #   case_count = { lowercase: 0, uppercase: 0, neither: 0 }
 #   str.each_char do |char|
 #     case char
 #     when /[a-z]/ then case_count[:lowercase] += 1
 #     when /[A-Z]/ then case_count[:uppercase] += 1
 #     else              case_count[:neither]   += 1
 #     end
 #   end
 #   case_count.map { |k, v| [k, (v.to_f / str.size * 100).round(2)] }.to_h
 # end
 
 
 p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
 p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
 p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }