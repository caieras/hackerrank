#!/bin/ruby

require 'json'
require 'stringio'
require 'time'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
  Time.strptime(s, "%H:%M:%S%P").strftime("%H:%M:%S")
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()