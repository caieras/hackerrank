#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'encryption' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

## V1 
# def encryption(s)
#   length = s.size
#   rows_size = Math.sqrt(length).floor
#   columns_size = Math.sqrt(length).ceil
#   encryption0 = []
  
#   # size check
#   unless rows_size * columns_size >= length
#     rows_size += 1
#   end
  
#   # string to array
#   s.each_char {|x| encryption0 << x }
  
#   # rows and columns
#   encryption1 = encryption0.each_slice((encryption0.size / rows_size.to_f).ceil).to_a
  
#   # order
#   count = 0
#   encryption2 = []
#   columns_size.times do 
#      encryption1.each do |item|
#       encryption2 << item[count]
#     end
#     count += 1 
#   end
  
#   # divide
#   encryption3 = []
#   columns_size.times do 
#     encryption3 << encryption2.shift(rows_size) 
#   end
  
#   ## format 
#   encryption3.map {|i| i.join('')}.join(' ')
# end

# v2
def encryption(s)
  size = Math.sqrt(s.size).ceil
  s += ' ' * (size**2 - s.size)
  matrix = s.chars.each_slice(size).to_a
  transposed_matrix = matrix.transpose
  encrypted_string = transposed_matrix.map { |row| row.join.strip }.join(' ')

  return encrypted_string
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = encryption s

fptr.write result
fptr.write "\n"

fptr.close()
