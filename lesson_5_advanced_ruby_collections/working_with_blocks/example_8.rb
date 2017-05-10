# select only numbers greating than 13 and words greater than 6

selected = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |sub_arr|
  sub_arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else 
      item.size < 6
    end
  end
end

p selected

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |sub_arr|
  sub_arr.select do |item|
    if item.to_s.to_i == item
      item > 13
    else 
      item.size < 6
    end
  end
end

