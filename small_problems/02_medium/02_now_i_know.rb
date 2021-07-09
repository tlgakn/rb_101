# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:


# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=begin

algo
1- pass the letters in a nested array
2- clone the original array
 -- it is a nested array--
3- iterate through the array two levels deep to get each letter
  if the block contains letter delete that block?
  
  
  

  


=end

# Examples:

ARRAY_OF_LETTERS = %w(BO  XK  DQ  CP  NA GT  RE  FS  JW  HU VI  LY  ZM)

# not complete
# def block_word?(string)
#   ARRAY_OF_LETTERS.each do |block|
#      string.chars.each do |letter|
#       if block.include?(letter)
#         ARRAY_OF_LETTERS.delete(block)
#         #p block
#         p letter
#       end
#     end
#   end
# end

def block_word?(string)
  
  ARRAY_OF_LETTERS.each do |block|
    if string.count(block) <= 1
      next
    else
      return false
    end
  end
  
  true
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end



p block_word?('BATCH') == true
 p block_word?('BUTCH') == false
 p block_word?('jest') == true


