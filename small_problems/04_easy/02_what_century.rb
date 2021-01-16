=begin

What Century is That?

Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

input: integer
output: (string represantation of integer) + (the suffix at the end)
rules: - new centuries begin in years that end with 01

algorithm
  
  * finding the century
    - (given year / 100) + 1 will give the century number  
    - special case for years which is divided to 100 with 0 remainder (then -=1)
    - call to_s to return it to a string
   
  * adding the suffix to string 'st', 'nd', 'rd', 'th'..
    - cases  1 -> st
           2 -> nd
           3 -> rd
        special case for 11,12,13 -> th
        else 'th'
    
  
=end

# LS Solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century%100)

  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# Student Solution
def century(year)
  cent = (year.to_f / 100).ceil.to_s

  if cent.end_with?("1") && !(cent.end_with?("11"))
    cent << "st"
  elsif cent.end_with?("2") && !(cent.end_with?("12"))
    cent << "nd"
  elsif cent.end_with?("3") && !(cent.end_with?("13"))
    cent << "rd"
  else
    cent << "th"
  end
end
  
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
