=begin

Bannerizer
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

=end


# my solution
def print_in_box(text)
  minus_display = "+#{'-' * (text.size + 2)}+"
  empty_space = " "*text.size
  
  puts minus_display
  puts "| " + empty_space + " |"
  puts "| " + text  + " |"
  puts "| " + empty_space + " |"
  puts minus_display
end

# ls solution
def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

# further exploration (student solution)
# def long_txt(string, width)
#   line_start = 0

#   loop do
#     text = string[line_start, width]
#     puts '| ' + text.ljust(width) + ' |'
#     line_start += width
#     break if line_start > string.size + 1
#   end
# end

# def print_in_box(str, max_width = 76)
#   str_width = str[0, max_width].size

#   puts "+-" + ''.ljust(str_width, '-') + "-+"
#   puts "| " + ''.ljust(str_width, ' ') + " |"
#   if str.size < max_width
#     puts '| ' + str + ' |'
#   else
#     long_txt(str, max_width)
#   end
#   puts "| " + ''.ljust(str_width, ' ') + " |"
#   puts "+-" + ''.ljust(str_width, '-') + "-+"
# end

# -----------------------------------------------------------------------------------------------------------------------------

# Further Exploration (another student solution)
def print_text_string(string)
  if string.size < 76
    puts "|" + string.center(string.size + 2) + "|"

  else
    loop do
      puts "|" + string[0..75].center(78) + "|"
      string.slice!(0, 76)
      break if string.size == 0
    end
  end
end

def print_box_outer(size)
  if size >= 76
    puts "+" + "--" + ("-" * 76) + "+"
  else
    puts "+" + "--" + ("-" * size) + "+"
  end
end

def print_box_inner(size)
  if size >= 76
    puts "|" + "  " + (" " * 76) + "|"
  else
    puts "|" + "  " + (" " * size) + "|"
  end
end

def print_in_box(string)
  string_size = string.size

  print_box_outer(string_size)
  print_box_inner(string_size)

  print_text_string(string)

  print_box_inner(string_size)
  print_box_outer(string_size)
end

# ----------------------------------------------------------------------------------------------------------------------------

# print_in_box("To be, or not to be, that is the question: Whether 'tis nobler in the mind to suffer The slings and arrows of outrageous fortune, Or to take arms against a sea of troubles And by opposing end them.")

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
