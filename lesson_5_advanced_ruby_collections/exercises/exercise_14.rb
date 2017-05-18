# Exercise 14

# Given this data structure write some code to return an array containing the 
# colours of the fruits and the sizes of the vegetables. The sizes should be 
# uppercase and the colours should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colours: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colours: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colours: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colours: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colours: ['green'], size: 'large'},
}

# The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colours].map do |colour|
      colour.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

