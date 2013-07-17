# Create an application which manages an inventory of products.
# Create a product class which has a price, id, and quantity on hand.
# Then create an inventory class which keeps track of various
# products and can sum up the inventory value.
require 'csv'


class Product
  attr_accessor :quantity
  attr_reader   :id, :name, :price

  def initialize(id, name, price, quantity)
    @id = id
    @name = name
    @price = Float(price)
    @quantity = quantity
  end

  def to_s
    "ID: #{@id}, Name: #{@name}, Price: #{@price}, Quantity: #{@quantity}"
  end
end

class Inventory
  attr_accessor :product_stock
  def initialize
    @product_stock = []
  end

  def read_inventory(csv_file)
    CSV.foreach(csv_file, headers: true) do |r|
      @product_stock << Product.new(r["ID"], r["Name"], r["Price"], r["Quantity"])
    end
  end

  def summary
    @total_products = 0
    @total_value = 0

    @product_stock.each do |product|
      @total_products += 1
      @total_value += product.quantity.to_f * product.price
    end

    puts "Currently there are #{@total_products} products in the store."
    puts "The total value of all products is: $#{@total_value}."
  end
end

store = Inventory.new
store.read_inventory('product_inventory.csv')
store.summary
