=begin

Assignment: Mortgage / Car Loan Calculator
Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

You'll need three pieces of information:

the loan amount --- loan_amount
the Annual Percentage Rate (APR) --- apr
the loan duration ---- loan_duration in months

From the above, you'll need to calculate the following things:
**monthly interest rate
**loan duration in months
**monthly payment
You can use the following formula:

Mortgage Calculator Formula

Translated to Ruby, this is what the formula looks like:

m = p * (j / (1 - (1 + j)**(-n))) ---------------------- FORMULA
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months


Finally, don't forget to run your code through Rubocop.

Hints:

* Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
* If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
* Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.
* You can use this loan calculator to check your results.

ALGORITHM

- get the loan_amount from user
  validate if it is a number
- get the APR from the user
  edge case: should the input will have floating point?
  validate if it is correct
- ask the user the loan_duration (in months)
  check if input is an integer

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

=end

# def prompt(message)
#   puts "=> #{message}"
# end

# def valid_number?(input)
#   input.to_i.to_s == input
# end

# loop do 
#   prompt ("Please enter the loan amount")
#   loan_amount = gets.chomp 
#   if valid_number?(loan_amount)
#     break
#   else
#     prompt "Hmm.. That's not a  valid number"
#   end
# end

# loop do 
#   prompt ("Please enter the annual percentage rate")
#   annual_percentage_rate = gets.chomp 
#   if valid_number?(annual_percentage_rate)
#     break
#   else
#     prompt "Hmm.. That's not a  valid number"
#   end
# end

# loop do 
#   prompt ("Please enter the loan duration in months")
#   loan_duration = gets.chomp 
#   if valid_number?(loan_duration)
#     break
#   else
#     prompt "Hmm.. That's not a  valid number"
#   end
# end


def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("-------------------------------")

  prompt("What is the loan amount?")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration (in years)?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
