# Exercise 7

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# # ex:

# # { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# Do it with a loop ======================================================

# statement = "The Flintstones Rock"
# counter = 0
# flintstones_hash = {}

# loop do 
#   break if counter == statement.size
#   current_letter = statement[counter]

#   if statement.include?(current_letter)
#     flintstones_hash[current_letter] = statement.count(current_letter)
#     counter += 1
#   end
#   flintstones_hash
# end

# p flintstones_hash

##========================================================================

# statement = "The Flintstones Rock"

# flintstones_hash = {}

# statement.chars.each do |letter| 
#   # next letter if statement.include?("")
#   if statement.include?(letter) 
#     flintstones_hash[letter] = statement.count(letter)
#   end
# end

# p flintstones_hash

# =======≠≠≠≠≠≠≠≠========≠≠≠≠≠≠≠≠≠≠========≠≠≠≠≠≠≠≠≠≠=========≠≠≠≠≠≠≠≠≠≠≠≠

# L-S solution - this ensures we don't count the blanks!

result = {}
letters = ("A".."Z").to_a + ("a".."z").to_a

letters.each do |letter|
  letters_frequency = statement.scan(letter).count
  result[letter] = letters_frequency if letters_frequency > 0
end

p result


# ========================================================================

a = "cruel world"
a.scan(/\w+/)        #=> ["cruel", "world"]
a.scan(/.../)        #=> ["cru", "el ", "wor"]
a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]














