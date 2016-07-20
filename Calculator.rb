#This is the actual calculator of String-Calculator
#The goal of StringCalculator is help me learn RSpec

def sumString(str)
	split = str.partition(',')
	if split[1] == ',' #meaning that there was a successful partition
		#recursively handles issue to repartition
		return split[0].to_i + sumString(split[2])
	else #there was no ',' in the str
		return str.to_i
	end
end

puts "Enter the string you wish to sum (separate the 2 numbers by a comma)"
sum = sumString(gets.chomp)
puts "The sum is: #{sum}"
