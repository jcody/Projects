# Checks if the string entered by the user is a palindrome.
# That is that it reads the same forwards as backwards like “racecar”

input = gets.strip
if input == input.reverse
  puts "Palindrome!"
else
  puts "Unfortunately, #{input} is not a palindrome :("
end