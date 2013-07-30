# The user enters a cost and then the amount of money given.
# The program will figure out the change and the number of quarters, dimes, nickels, pennies needed for the change.

def change(cost, money)
  change =
  if (money>cost)
    change = (money-cost).round(2)

    q, remaining = (change/0.25).floor, change%0.25
    d, remaining = (remaining/0.1).floor, remaining%0.1
    n, remaining = (remaining/0.05).floor, remaining%0.05
    p = (remaining/0.01).floor

    puts "#{q} Quarters | #{d} Dimes | #{n} Nickels | #{p} Pennies"

  else puts "Not enough money" end

end


$(window).onScroll(function(e) {
  var theta = $(window).scrollTop() % Math.PI;
  $('.logo').css({ transform: 'rotate(' + theta + 'rad)' });
});