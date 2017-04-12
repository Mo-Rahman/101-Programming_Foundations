# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

flintstones.each_with_index do |name, index|
  if name.include?("Be")
    puts index
  end 
end

# L-S solution

flintstones.index { |name| name[0, 2] == "Be" }