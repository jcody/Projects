# Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given interest rate.
# Also figure out how long it will take the user to pay back the loan.

def mortgage(price, years, r)

  total_cost = (price.to_f * (1+(r/100.0))**years).round(2)

  payments = (total_cost/(years*12)).round(2)

  puts "Total Mortgage Cost: $#{total_cost}"
  puts "$#{payments} for #{years*12} months."
end