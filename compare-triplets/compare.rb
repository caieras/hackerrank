#!/bin/ruby

require 'json'
require 'stringio'

def compareTriplets(a, b)
  a_points = 0
  b_points = 0
  total = []
  a.each_with_index do |a, i|
    if a > b[i]
      a_points += 1
    elsif a == b[i] or b == [i]
      a_points += 0
    else a < b[i]
      b_points += 1
    end
  end
  total.push(a_points, b_points)
end

compareTriplets(a, b)
