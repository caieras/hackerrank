#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(n, k, ar)
  count = 0
    (0...n).each do |i|
      ((i+1)...n).each do |j|
        if (ar[i] + ar[j]) % k == 0
          count += 1
        end
      end
    end
  return count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

k = first_multiple_input[1].to_i

ar = gets.rstrip.split.map(&:to_i)

result = divisibleSumPairs n, k, ar

fptr.write result
fptr.write "\n"

fptr.close()
