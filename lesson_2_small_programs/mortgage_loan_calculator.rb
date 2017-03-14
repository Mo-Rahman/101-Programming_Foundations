# Assignment: Mortgage / Car Loan Calculator

# START

# GET
# VALIDATE make sure only valid numbers are used and includes floating points
# SET loan_amount == input

# Ask for the Annual Percentage rate (APR)
#   - make sure it's a valid number and not jiberish

# Ask for the loan duration in months
#   - make sure it's a valid number.

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input && input.to_i > 0
end

def float?(input)
  input.to_f.to_s == input && input.to_f > 0
end

def valid_number?(num)
  integer?(num) || float?(num)
end

loop do
  prompt("Welcome to the mortage calculator")
  prompt("=================================")

  loan_amount = ''
  loop do
    prompt("Please Enter your loan amount")
    loan_amount = Kernel.gets().chomp()

    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  apr = ''
  loop do
    prompt("Please enter your Annual Percentage Rate (APR)")
    prompt("5% as 5, 7.5% as 7.5 etc")
    apr = Kernel.gets().chomp

    if valid_number?(apr)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  duration_in_years = ''
  loop do
    prompt("Please enter your loan duration in years")
    duration_in_years = Kernel.gets().chomp()

    if valid_number?(duration_in_years)
      break
    else
      prompt("Please enter a valid duration")
    end
  end

  monthly_interest_rate = (apr.to_f / 100) / 12

  duration_in_months = duration_in_years.to_f * 12

  monthly_payment = loan_amount.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-duration_in_months))

  prompt("=========================================================")
  prompt("Your monthly payment will be £#{monthly_payment.round(2)}")
  prompt("over #{duration_in_months.round(2)} months!")
  prompt("=========================================================")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  prompt("If you would like to exit, press any other key!")
  prompt("=========================================================")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for using the mortgage loan calculator!")
