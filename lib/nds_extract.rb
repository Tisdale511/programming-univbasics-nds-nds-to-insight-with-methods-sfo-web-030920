$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  col_idx = 0
  gross = 0
  
  while col_idx < director_data.length do
    gross += director_data[:movies][col_idx][:worldwide_gross]
    #binding.pry
    col_idx += 1
  end
  return gross
end

#binding.pry
result = {}
def directors_totals(nds)
  #name = nds[:name]
  #gross_total = nds[row_idx][:movies][col_idx][:worldwide_gross]
  row_idx = 0
  total = 0
  name = nds[row_idx][:name]
  while row_idx < nds.length do
    total = gross_for_director(name)
  end
  result[name] = total
  total = 0
  row_idx += 1
end
p result


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
#require "pry"
#binding.pry

