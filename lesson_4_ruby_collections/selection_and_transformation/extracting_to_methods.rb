# Extracting to Methods

# Most of the time, selecting or transforming a collection is a very specific 
# action -- select all the odd numbers, turn all elements into strings, etc 
# -- which naturally lends the specific action being extracted into convenience 
# methods.

# Say for example we wanted to be able to select all of the vowels in a given 
# string. We're going to use the helpful String#include? method here to assist 
# us in determining whether a character is a vowel.



def select_vowels(str)
  selected_chars = ''
  counter = 0

  loop do 
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.length
  end

  selected_chars
end

string = "Liverpool Football Club!"

puts select_vowels(string)
puts string
