# Calculator – A simple calculator to do basic operators. Make it a scientific 
# calculator for added complexity.


def sum(*args)
	if args.empty?
		puts "No numbers given"
	else
		puts "Total arguments given: #{args.count}"
		total = args.inject{ |sum, x| sum + x}
		puts "Sum: #{total}"
	end
end

def subtract(*args)
	if args.empty?
		puts "No numbers given"
	else
		args.inject{ |sum, x| sum - x}
	end
end

def multiply(*args)
	if args.empty?
		puts "No numbers given"
	else
		args.inject{ |sum, x| sum * x}
	end
end

def divide(*args)
	if args.empty?
		puts "No numbers given"
	else
		args.inject{ |sum, x| sum / x}
	end
end
