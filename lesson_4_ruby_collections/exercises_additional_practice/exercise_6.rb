# Exercise 6

# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name.slice!(0,3) }

L-S solution! 

flintstones.map! { |name| name[0,3] }