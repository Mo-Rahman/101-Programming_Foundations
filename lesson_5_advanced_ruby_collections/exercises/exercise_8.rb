# require 'pry'
# Exercise 8

# Using the each method, write some code to output all of the vowels from 
# the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = 'aeiou'
selected_vowels = []

hsh.each_value do |value|
  value.each do |word|
    selected_vowels << word.scan(/["aeiou"]/) if word.scan(/["aeiou"]/).count > 0
  end
end

p selected_vowels

#=> [["e"], ["u", "i"], ["o"], ["o"], ["u", "e"], ["o", "e"], ["e"], ["a"], ["o"]]

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end