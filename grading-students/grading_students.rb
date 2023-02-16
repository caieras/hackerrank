#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades)
  rounded_grades = []
  
  grades.each do |grade|
    if grade >= 38
      multiple = (grade..100).find { |i| i % 5 == 0 }
      grade = multiple if multiple - grade < 3
    end
    
    rounded_grades << grade
  end
  
  rounded_grades
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
