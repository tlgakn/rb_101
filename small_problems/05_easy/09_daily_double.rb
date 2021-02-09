=begin

ddaaiillyy ddoouubbllee
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.


algo


=end

# Student solution
def crunch(phrase)
  cleaned_chars = []
  phrase.each_char do |char|
    cleaned_chars.push(char) unless cleaned_chars.last == char
  end
  cleaned_chars.join
end

def crunch_regexp(phrase)
  phrase.gsub(/(.)\1+/, '\1')
end

# LS Solution
# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
