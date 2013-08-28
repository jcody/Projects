# Credit Card Validator – Takes in a credit card number from a common credit card vendor 
# (Visa, MasterCard, American Express, Discoverer) and validates it to make sure that it 
# is a valid number (look into how credit cards use a checksum).

def isValid(card)
	card = card.to_s
	
	

	sum = 0

	card.each_char { |char| sum += char }
	puts sum

end