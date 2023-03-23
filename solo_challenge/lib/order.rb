class Order
  def initialize(menu)
    @tab = Hash.new(0)
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
  
  def tab
    @tab
  end

  def total
    # calculates total bill
  end

end