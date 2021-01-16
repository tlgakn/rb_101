=begin

Get The Middle Character

Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.


rules:
  if string.length % 2 == 1 return one char  ( arg.length / 2 )
  if string.length % 2 == 0 return two chars (arg.length / 2 + 1 && +1) 
  
  need index number to return the valuie ( index starting 0)
  
=end
# my solution
def center_of(string)
  if string.length % 2 == 1  # 11
    result = (string.length / 2)  
    string[result]
  else
    result = (string.length / 2)
    string[result - 1] + string[result]
  end
end
  
  # ls solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
  
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
