class Order
  def initialize(menu)
    @tab = Hash.new(0)
    # @time = current time use API mentioned but securely. Find out why John said
    # to make sure to not commit the api secret key. 
    @menu = menu
  end

  def tab
    @tab
  end
  
  def add(dish, quantity)
    if @menu.dishes.key?(dish)
      @tab[dish] += quantity
    else
      # raise some error stating that the dish isn't in the menu
    end
  end

  def total
    # returns the total bill with @tab
  end
end