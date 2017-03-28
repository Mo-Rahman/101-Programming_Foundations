
# Question 7

# What is the output of the following code?

def prompt(message)
  puts "=> #{message}"
end

answer = 42
prompt "answer object id before the method call: #{answer.object_id}"

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

prompt answer - 8
prompt new_answer
# answer = 34

prompt "answer object id after the method call: #{answer.object_id}"
prompt "the object_id for new_answer: #{new_answer.object_id}"