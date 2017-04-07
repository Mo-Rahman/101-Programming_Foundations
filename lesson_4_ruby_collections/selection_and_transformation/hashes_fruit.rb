# Let's now take a look at an example with hashes. In this example we want to 
# select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce)
  key = produce.keys # => ["apple", "carrot", "pear", "broccoli"]
  counter = 0
  selected_fruit = {}


  loop do 
    current_produce = key[counter] # first key as counter is 0
    fruit = produce[current_produce] # value

    if 'Fruit'.include?(fruit)
      selected_fruit[current_produce] = fruit
    end

    counter += 1
    break if counter == produce.size
  end

  selected_fruit  
end
  
puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts produce

# selected_fruits[current_key] = current_value

# L-S solution

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size      

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end