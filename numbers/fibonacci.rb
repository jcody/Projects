# terrible performing fibbonacci

def fibonacci(n)
  fib = [1]

  while fib.length < n
    if fib.length == 1
      fib.push(1)
    else
      fib.push(fib[-1] + fib[-2])
    end
  end
  puts fib.to_s
end
# Usage:
# fibonacci(20)


def fib_until(num)
  n1, n2 = 1, 1
  while n1 < num
    yield n1
    n1, n2 = n2, n1+n2
  end
end
# Usage:
# fib_until(100000) { |v| print v, " " }