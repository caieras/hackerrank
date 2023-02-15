#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
  lowest_score = scores.first
  highest_score = scores.first
  best_record = 0
  worst_record = 0


  scores.each do |score|
    if score > highest_score
      highest_score = score
      best_record += 1
    end
    
    if score < lowest_score
      lowest_score = score
      worst_record += 1
    end
  end
  
  records = [best_record, worst_record]

  return records 
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()
