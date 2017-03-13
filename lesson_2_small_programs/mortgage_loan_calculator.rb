

# Assignment: Mortgage / Car Loan Calculator

# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:

# monthly interest rate (APR/12 will give you the apr in months)
# loan duration in months (ask for the loan duration in months! Done!)
# You can use the following formula:

# Mortgage Calculator Formula

# Translated to Ruby, this is what the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# # Finally, don't forget to run your code through Rubocop.

# Hints:

# Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
# # If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.


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

Kernel.puts("Welcome to our mortage calculator")

Kernel.puts("Please Enter your loan amount")
loan_amount = Kernel.gets().chomp()

Kernel.puts(loan_amount)

Kernel.puts("Please enter your Annual Percentage Rate (APR)")
apr = Kernel.gets().chomp

Kernel.puts("Please enter your loan duration in years")
duration_in_years = Kernel.gets().chomp()

monthly_interest_rate = apr.to_f / 100 / 12 

duration_in_months = duration_in_years.to_i * 12

monthly_payment = loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-duration_in_months)))

Kernel.puts("£#{monthly_payment.round(2)}")

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months 









