# Enter a string and the program counts the number of vowels in the text. For added complexity have it report a sum of each vowel found.

# Ex/ "the little red riding hood"
# Total Vowels: 8
# Each Vowel: {"e"=>3, "i"=>3, "o"=>2}


def sum_vowel(input)
  counts = Hash.new(0)

  input.each_char do |c|
    c.match(/[aeiou]/) { counts[c] += 1 }
  end
  puts "Total Vowels: #{input.count 'a^e^i^o^u'}"
  puts "Each Vowel: #{counts}"
end


input = gets.strip.downcase
sum_vowel(input)