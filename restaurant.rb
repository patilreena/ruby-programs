class Food

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
  end
  attr_accessor :name, :price, :type

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

burger = Food.new("cheeseburger", 7, "veg")
roll = Food.new("chickenroll", 10, "nonveg")
cake = Food.new("honeycake", 8, "veg")

class Menu
  def initialize(name, items)
    @name = name
    @items = items
  end

  attr_accessor :name, :items

  def show_items
    @items.each do |current_item|
      puts " - #{current_item.name}"
    end
  end
end

class Order
  def initialize(items)
    @items = items
  end
  attr_accessor :items

  def total_cost
    cost = 0
    @items.each do |item|
      cost = cost + item.price
    end
    puts "Total cost is #{cost}"
  end
end

menu = Menu.new("Food", [burger, roll, cake])
order = Order.new([burger, roll])
order.total_cost

def take_order(menu)
  menu.show_items
  answer = gets.chomp.to_i
  puts "do you want anything else?"
end
