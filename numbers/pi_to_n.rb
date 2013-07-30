# Enter a number and have the program generate PI up to that many decimal places.
# Keep a limit to how far the program will go.

def pi(n)
  # Yes, I'm taking the easy way for now...
  puts Math::PI.round(n)
end