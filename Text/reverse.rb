# Enter a string and the program will reverse it and print it out.

unless !ARGV.empty?
  puts gets.reverse
else
  ARGV.each do |input|
    puts input.reverse
  end
end