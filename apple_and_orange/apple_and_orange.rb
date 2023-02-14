#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countApplesAndOranges' function below.
#
# The function accepts following parameters:
#  1. INTEGER s
#  2. INTEGER t
#  3. INTEGER a
#  4. INTEGER b
#  5. INTEGER_ARRAY apples
#  6. INTEGER_ARRAY oranges
#

def count_apples_and_oranges(s, t, a, b, apples, oranges)
  apples_counter = 0
  oranges_counter = 0
  
  apples.each do |apple|  # #apples: [-2, 2, 1]
    position = a + apple  # tree position + apple distance

    if position >= s && position <= t
      apples_counter += 1
    end
  end
    
  oranges.each do |orange| #oranges: [5, -6]
   position = a + orange   # tree position + orange distance
    if position >= s && position <= t
      oranges_counter += 1
    end
  end
  
  p apples_counter
  p oranges_counter
end

first_multiple_input = gets.rstrip.split

s = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

second_multiple_input = gets.rstrip.split

a = second_multiple_input[0].to_i

b = second_multiple_input[1].to_i

third_multiple_input = gets.rstrip.split

m = third_multiple_input[0].to_i

n = third_multiple_input[1].to_i

apples = gets.rstrip.split.map(&:to_i)

oranges = gets.rstrip.split.map(&:to_i)

count_apples_and_oranges s, t, a, b, apples, oranges
