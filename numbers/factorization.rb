# Have the user enter a number and find all Prime Factors (if there are any) and display them.

def factorize(num)
  primes = []

  square = Math.sqrt(num)

  if num < 2 
    return false
  end

  for i in 2..square
    if num%i == 0 then return false
  end

  return true
end
end