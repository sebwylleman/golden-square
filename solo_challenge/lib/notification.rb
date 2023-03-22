class Notification
  def initialize
    # API-secret key??
  end

  def delivery_time(Order.time)
    # Note: should delivery time also be created 
    # automatically from the start as an attribute rather than a method, like time in
    # Order class?
    # returns the time atttibute of the Order class  and calculates 
    # delivery time by adding 30 min on top
  end

  def send_notif
    # returns notification of order in this format:
    # "Thank you! Your order was placed and will be delivered before 18:52"
    # replace 18:52 by the output of delivery time. Should delivery time also be created 
    # automatically from the start as an attribute rather than a method, like time in
    # Order class?
  end
end