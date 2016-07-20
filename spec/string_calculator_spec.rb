# spec/string_calculator_spec.rb

require "Calculator"
include Calculator

describe Calculator do

	#testing the .sumString method with one input
	describe ".sumString one input" do
		context "given an empty string" do
			it "returns zero" do
				expect(Calculator.sumString("")).to eql(0)
			end
		end

		context "given '4'" do
			it "returns 4" do
				expect(Calculator.sumString("4")).to eql(4)
			end
		end
	end

	describe ".subString two inputs" do
		context "given two single-digit numbers" do
			it "'1,2' returns 3" do
				expect(Calculator.sumString("1,2")).to eql(3)
			end
		end

		context "given two double-digit numbers" do
			it "'11,12' returns 23" do
				expect(Calculator.sumString("11,12")).to eql(23)
			end
		end
	end

	describe ".subString multiple inputs" do
		context "given '1, 2, 3'" do
			it "returns 6" do
				expect(Calculator.sumString('1,2,3')).to eql(6)
			end
		end

		context "lots of spaces, expect '1       ,2              ,   3" do
			it "returns 6" do
				expect(Calculator.sumString('1             ,2               ,   3')).to eql(6)
			end
		end
	end

end
