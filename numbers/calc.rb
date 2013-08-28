# puts "Enter calculation: "
# input = gets.strip
# input.split("+").reduce(0) { |sum, i| sum += i.to_i }

# 10+20+10 => 40 


# Enter an expression, solves using PEMDAS (*, /, +, -) order of ops
# Only single digits for now (ie. 9+2*6/3-1, anything else will break ie. 10*3+1) 

puts "Enter calculation:"
calculation = gets.strip


nums = calculation.chars
# => ["3", "+", "4", "+", "5", "-", "6", "*", "7"]

while nums.include?("*")
	current = nums.index("*")
	# => ["3", "*", "4"]

	sum = (nums[current-1].to_f * nums[current+1].to_f).round(3)

	nums[current-1..current+1] = sum.to_s
	# ["3", "*", "4"] => ["12"]
end

while nums.include?("/")
	current = nums.index("/")

	sum = (nums[current-1].to_f / nums[current+1].to_f).round(3)
	nums[current-1..current+1] = sum.to_s
end

while nums.include?("+")
	current = nums.index("+")

	sum = (nums[current-1].to_f + nums[current+1].to_f).round(3)
	nums[current-1..current+1] = sum.to_s
end

while nums.include?("-")
	current = nums.index("-")

	sum = (nums[current-1].to_f - nums[current+1].to_f).round(3)
	nums[current-1..current+1] = sum.to_s
end


if !nums.include?(/[\/*+-]/)
	puts "Calculator result:"
	puts nums
end