require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect
LANGUAGE = 'en'
# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the results

# answer = Kernel.gets()
# Kernel.puts(answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def valid_number?(num)
#   num.to_i() != 0
# end

# def integer?(input)
#   Integer(input) rescue false
# end

def integer?(input)
  input.to_i.to_s == input && input.to_i > 0
end

# def float?(input)
#   Float(input) rescue false # or input.to_i.to_s == input (to fix rubocop error)
# end

def float?(input)
  input.to_f.to_s == input && input.to_i > 0
end

def valid_number?(num)
  float?(num) || integer?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def messages(message, lang = 'es')
  MESSAGES[lang][message]
end

# prompt("Welcome to Calculator! Enter your name:")

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    # prompt("Make sure to use a valid name.")
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  operator_prompt = <<~MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('choose', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1' then number1.to_i() + number2.to_i()
           when '2' then number1.to_i() - number2.to_i()
           when '3' then number1.to_i() * number2.to_i()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(messages('again', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thank_you', LANGUAGE))
