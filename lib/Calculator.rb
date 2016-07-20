#This is the actual calculator of String-Calculator
#The goal of StringCalculator is help me learn RSpec
module Calculator
	def sumString(str)
		split = str.partition(',')

		if split[1] == ',' #there was a ',', meaning there's more than one argument
			#recursively handles issue
			return split[0].to_i + sumString(split[2])
		else 
			return str.to_i
		end
	end
end

