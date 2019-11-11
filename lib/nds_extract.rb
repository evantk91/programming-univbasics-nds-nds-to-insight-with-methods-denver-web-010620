require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  director_idx = 0 
  
  while director_idx < nds.length do
    director = nds[director_idx][:name]
    result[director] = gross_for_director(nds[director_idx])
    director_idx += 1
  end
  
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  index = 0
  
  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end
  
  return total
end
