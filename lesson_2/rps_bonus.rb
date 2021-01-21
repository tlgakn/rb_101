=begin

CREATING A RPS GAME WITH ADDITIONAL FEATURES (RB_101 RPS BONUS ASSIGNMENTS)

# SET
- set VALID_CHOICES 
- set WIN_COMBINATIONS
- set WIN_SCORE
- set score_board

# in the beginning
- display a welcome text and the rules of the programm

# in the programm
- display the chose options 
- ask the user to choose one (r,p, sc, sp, l)
      if the user enters a non valid choice
          display an error message ex: "That's not a valid choice"
- display in every round which user chose which object
    ex: You chose: r; computer chose: sp
- display the score
    ex: your score: 0, computer score: 1
- keep updating the score
- when a user reaches 5 
    ask the user if he wants to play again
        - ask to enter 'y/Y' to play again, and anything else to exit
- display a than you message for using the calculator

algorithm:
- define the helper methods and set the variables/constants
- figure out a logic how the program should run


=end

VALID_CHOICES = ['r', 'p', 'sc', 'sp', 'l']

WIN_SCORE = 5

WIN_COMBINATIONS = {
  'r' => ['l', 'sc'],
  'l' => ['p', 'sp'],
  'sp' => ['r', 'sc'],
  'sc' => ['l', 'p'],
  'p' => ['r', 'sp']
}

score_board = {
  player: 0,
  computer: 0
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_COMBINATIONS[first].include?(second)
end

def update_score_board(player, computer, score_board)
  if win?(player, computer)
    score_board[:player] += 1
  elsif win?(computer, player)
    score_board[:computer] += 1
  end
end

def reset_score_board(score_board)
  score_board[:computer] = 0
  score_board[:player] = 0
end

def display_score_board(score_board)
  "Your score: #{score_board[:player]}.
  Computer score: #{score_board[:computer]}."
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def match_ended?(score_board)
  score_board[:player] == WIN_SCORE || score_board[:computer] == WIN_SCORE
end

def display_match_winner(score_board)
  if score_board[:player] == WIN_SCORE
    "Congrats! You won #{WIN_SCORE} matches, You are the winner!"
  elsif score_board[:computer] == WIN_SCORE
    "Computer won #{WIN_SCORE} matches, Computer is the winner :("
  end
end

def display_choice_options
  "Choose one:
  'r'  for rock,
  'p'  for paper,
  'sc' for scissors,
  'sp' for spock,
  'l'  for lizard"
end

def display_rules
  <<-INTRO
  Welcome to the game of Rock, Paper Scissors, Spock, Lizard!
  The rules are:
  Rock crushes Lizard and crushes Scissors.
  Paper covers Rock and disproves Spock.
  Scissors cut Paper and decapitates Lizard.
  Spock smashes Scissors and vaporizes Rock.
  Lizard poisons Spock and eats Paper.
  You must win #{WIN_SCORE} matches to win the entire game.
  INTRO
end

def clear_screen
  system('clear')
end

prompt(display_rules)

loop do
  loop do
    choice = '' # choice is initialized outside of the most inner loop
    loop do # most inner loop for input validation
      prompt(display_choice_options)
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
        sleep(2)
        clear_screen
      end
    end

    computer_choice = VALID_CHOICES.sample # computer choses a random object

    puts "You chose: #{choice}; Computer chose: #{computer_choice}" # displaying the choices

    prompt(display_results(choice, computer_choice)) 

    update_score_board(choice, computer_choice, score_board)

    prompt(display_score_board(score_board))

    sleep(2)
    clear_screen

    if match_ended?(score_board)
      prompt(display_match_winner(score_board))
      reset_score_board(score_board)
      break
    end
  end

  prompt(
    "Do you want to play again?
    Enter Y/y to play again. Enter anything else to exit."
  )
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt("Thank you for playing. Goodbye!")
