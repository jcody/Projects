# Calculate the total cost of tile it would take to cover a floor plan of width and height, using a cost entered by the user.

def cost(w, h, price)
  return "$#{w*h*price}"
end

puts cost(10,10,25)