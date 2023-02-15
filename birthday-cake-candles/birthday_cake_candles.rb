#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
  candles.count(candles.max)
end

candles = [3, 2, 1, 3]

result = birthdayCakeCandles(candles)
