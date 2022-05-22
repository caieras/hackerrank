#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#


def staircase(n)
  i = 1
  blank = n - 1
  while i <= n
    puts "#{" " * blank + "#" * i}"
    i += 1
    blank -= 1
  end
end
  
staircase(4)
