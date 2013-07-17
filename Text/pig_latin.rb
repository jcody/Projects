# Pig Latin is a game of alterations played on the English language game.
# To create the Pig Latin form of an English word the initial consonant sound
# is transposed to the end of the word and an ay is affixed
# (Ex.: "banana" would yield anana-bay). Read Wikipedia for more information on rules.

# "egg" => "egg-way", "hello" => "ello-hay"

input = gets.strip

if ["a", "e", "i", "o", "u"].include? input.chr then
  input += "-way"
else
  input += "-#{input[0]}ay"
  input.slice!(0)
end

puts "Pig Latinized: #{input}"