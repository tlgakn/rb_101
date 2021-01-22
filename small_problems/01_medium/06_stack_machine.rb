#require 'pry'

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  #binding.pry
  end
end
      
# Further Exploration
# (3 + (4 * 5) - 7) / (5 % 3) => 8
minilang("3 PUSH 5 MOD PUSH 4 PUSH 5 MULT PUSH -7 ADD PUSH 3 ADD DIV PRINT")
