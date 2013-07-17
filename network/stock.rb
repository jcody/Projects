# "YHOO","Yahoo! Inc.",26.64
# "AMZN","Amazon.com, Inc.",304.00
# "AAPL","Apple Inc.",428.85


# Get current stock price of a given ticker
require 'csv'
require 'open-uri'

base = "http://finance.yahoo.com/d/quotes.csv?s=YHOO+AMZN+AAPL&f=snb3"

class Stock
  attr_accessor :symbol, :name, :price

  def initialize(symbol, name, price)
    @symbol = symbol
    @name = name
    @price = price
  end
end

class Tracker
  def initialize
    @portfolio = []
  end

  def read(base)
    CSV.new(open(base), headers: false).each do |line|
      @portfolio << Stock.new(line[0], line[1], line[2])
    end
  end

  def print
    puts "Current Stock Portfolio: "
    @portfolio.each do |stock|
      puts "#{stock.symbol}: #{stock.price} - #{stock.name}"
    end
  end
end

current = Tracker.new
current.read(base)
current.print