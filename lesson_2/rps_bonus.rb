=begin

Here are a couple of bonus features for the Rock Paper Scissors program.

Lizard Spock

3) Keep score of the player's and computer's wins. When either the player
or computer reaches five wins, the match is over, and the winning player
becomes the grand winner. Don't add your incrementing logic to display_results.
Keep your methods simple; they should perform one logical task.
no more, no less.

algorithm for third question (keeping score of the player's and
computer's wins)


- create a hash with player/computer keys SCORE
- create a method UPDATE_VALUE to increment the SCORE every time by 1 on every win
  whose value will incremented every time by 1 by each win
- the program will stop when one of the player reach 5
- make an if an else statement an increment the score hash every time by one each time who wins

=end

VALID_CHOICES = ['r', 'p', 'sc', 'sp', 'l']

def prompt(message)
  Kernel.puts("=> #{message}")
end

intro = <<-MSG

You can just use the first character of your choice.  
For example, just enter 'r' for 'rock'"


Paper = p
Scissors = sc
Spock = sp
Lizard = l

MSG
prompt(intro)

LOOKUP_HASH = {

  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

# made the words shortcut versions of one/two letter in the beginning
WIN_HASH = {
  'r' => %w(l sc),
  'p' => %w(r sp),
  'sc' => %w(p l),
  'sp' => %w(r sc),
  'l' => %w(sp p)
}

UPDATE_SCORE = {
  'player' => 0,
  'computer' => 0
}

def win?(first, second)
  if WIN_HASH[first].include?(second)
    SCORE_HASH['player'] += 1
  else
    SCORE_HASH['computer'] += 1
  end
end

# def win?(first, second)
#   if WIN_HASH[first].include?(second)
#     true
#   else
#     false
#   end
# end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{LOOKUP_HASH[choice]};
        Computer chose: #{LOOKUP_HASH[computer_choice]}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for playing. Good bye!")
