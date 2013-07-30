# Have the user enter a number and find all Prime Factors (if there are any) and display them.

def factor(num)
  primes = []

  for (i=2; i<num; i++)
    if num%i == 0
      factor(i)
      primes.push(i)
      return true
    elsif num%i != 0
      return false
    end
  end

  puts primes
end