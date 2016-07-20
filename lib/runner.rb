#The actual executable code

require_relative "Calculator"
include Calculator

puts "-" * 10
puts "Enter the string you wish to sum (separate the numbers with commas)"
sum = Calculator.sumString(gets.chomp)
puts "The sum is: #{sum}"
puts "-" * 10