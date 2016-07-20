# spec/string_calculator_spec.rb

require "Calculator"
include Calculator

describe Calculator do

	#testing the .sumString method
	describe ".sumString" do
		context "given an empty string" do
			it "returns zero" do
				expect(Calculator.sumString("")).to eql(0)
			end
		end
	end

end
