=begin

Delete vowels
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:

=end

# My solution 
VOWELS = %w(a e i o u A E I O U)

def remove_vowels(string_array)
  string_array.each do |word|
    word.chars do |char|
      if VOWELS.include?(char)
        word.delete!(char)
      end
    end
  end
  string_array
end

# LS Solutiion
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

# Refactored after checking the LS Soltuion
def remove_vowels(string_array)
  string_array.map do |word|
      word.delete('aeiouAEIOU')
    end
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
