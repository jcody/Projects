# Count Words in a String – Counts the number of individual words in a string. For 
# added complexity read these strings in from a text file and generate a summary.

def wordCount(input)
	count = Hash.new(0)
	words = input.split

	words.each { |w| count[w] += 1 }

	count.sort_by { |word, freq| freq }.reverse.each { |w, f| puts w + ": " + f.to_s }


end