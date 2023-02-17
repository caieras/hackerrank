#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'extraLongFactorials' function below.
#
# The function accepts INTEGER n as parameter.
#

def extraLongFactorials(n)
  p (1..n).inject(1) {|r,i| r*i }
end

n = gets.strip.to_i

extraLongFactorials n
