#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
  results = []
  arr.each do |x| 
    results << arr.sum - x
  end
  puts "#{results.min} #{results.max}"
end

arr = [11, 23, 34, 45, 56]
# min 10  max 14

miniMaxSum(arr)
