#This is the actual calculator of String-Calculator
#The goal of StringCalculator is help me learn RSpec

def sumString(str)
	if str.length = 0 #empty string
		return 0
	else
		split = str.partition(',')
		if split[1] = ',' #meaning that there was a successful partition
			return split[0].to_i + split[2].to_i
		else #there was no ',' in the str
			return str.to_i
		end
	end
end

puts "Enter the string you wish to sum (separate the 2 numbers by a comma)"
sum = sumString(gets.chomp)
puts "The sum is: #{sum}"
