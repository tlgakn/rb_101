# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

=begin

Problem: Parentheses should match each other

Input: String
Output: Boolean
Rules:  - if no parenthesis is given it should return true
        - matching parenthesis should begin with "(" and not with ")"
        
        - matching parenthesis have even values (which are returning true) even zero.

Algorithm:
- define two variables left_parenthese and right_parenthese (maybe not necessary)
- convert the string to an array
- select the parenthesis and save them in a new collection
  * create an if and else statement for the returning values either true or false
    - if the size is even it will return true
    maybe using the indicies how to decide which parenthese comes first
  
problem: (how to decide that "(" comes first.*


=end

# Examples:

def balanced?(string)

  score = 0
  string.chars.each do |el|
    if score < 0
      return false
    elsif el == "("
      score += 1
    elsif el == ")"
      score -= 1
    end
  end
  score == 0
end

# LS Solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# another student solution
def balanced?(str)
  str = str.delete '^()'
  while str.gsub!('()', ''); end
  str.empty?
end

# score = 0
# score > 1 --> false


# score == 0

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false