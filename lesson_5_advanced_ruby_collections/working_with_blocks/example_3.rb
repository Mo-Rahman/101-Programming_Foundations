# Example 3

# Let's mix it up a little bit and have you try taking apart an example on your own.

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# => [1, 3]

# line 1:  Action: Object:  Side Effect  return Value   Is return value used

# line 1: Action = method call (map)
# line 1: Object = Outer array
# line 1: Side effect = none
# line 1: return value = [1,3]
# line 1: Is return value used? = no

# line 1-4: Action = block call
# line 1-4: Object = Each sub-array
# line 1-4: Side Effect = None
# line 1-4: Return value = Integer at index 0 of sub-array
# line 1-4: Is the return value used? = Yes, used by map for transformation. 

# line 2: Action = method call (puts)
# line 2: Each sub-array
# line 2: Outputs index 0 of each sub-array
# line 2: return value = nil
# line 2: is return value used? = No

# line 2: Action = method call (first)
# line 2: