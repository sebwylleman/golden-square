class Order
attr_reader :tab, :order_time

  def initialize(menu)
    @tab = Hash.new(0)
    @menu = menu
    @order_time = Time.now
  end
  
  def add(dish, quantity)
    @tab[dish] = quantity
  end

  def remove_dish(dish, quantity)
    @tab.delete(dish)
  end

  def remove_quantity(dish, quantity)
    @tab[dish] = quantity - 1
  end

  def total
    # calculates total bill with a service charge of 10%
    @tab.reduce(0) do |sum, (dish, quantity)|
      sum += (quantity * @menu.dishes[dish] * 1.1).round(2)
   end
  end
end