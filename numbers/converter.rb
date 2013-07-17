# Converts various units between one another. The user enters the type of unit being entered,
# the type of unit they want to convert to and then the value. The program will then make the conversion.

def convert(val, from, to)
  case to
  when "f"
    (val = val * Rational(9, 5) + 32) unless from != "c"
  when "c"
    (val = (val - 32) * Rational(5, 9)) unless from != "f"
  when "meters"
    (val *= 0.3048) unless from != "feet"
  when "feet"
    (val /= 0.3048) unless from != "meters"
  end
  puts "Converted Value is: #{val.to_f}"
end
