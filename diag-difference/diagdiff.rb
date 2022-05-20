#!/bin/ruby

require 'json'
require 'stringio'
require 'matrix'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

## array solution

# def diagonalDifference(arr)
#   total_1 = []
#   total_2 = []
#   m = 0
#   r = 2
#   arr.each { |a| total_1 << a[m] ; m += 1 }
#   arr.each { |a| total_2 << a[r] ; r -= 1 }
#   diff = total_1.sum - total_2.sum
#   diff.abs
# end

#matrix solution

def diagonalDifference(arr)
  arr2 = arr.map {|a| a.reverse}
  mtx1 = Matrix.rows(arr).trace
  mtx2 = Matrix.rows(arr2).trace
  total = mtx1 - mtx2
  total.abs
end

arr = [[11, 2, 4],
[4, 5, 6],
[10, 8, -12]]

puts diagonalDifference(arr)