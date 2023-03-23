class Notification
  attr_reader :order_time

  def initialize(order_time)
    @order_time = order_time
  end

  def delivery_time
    @order_time + (30 * 60) # adding 30 min on top of Time.now to account for prep/journey
  end

  def delivery_time_formatted
    delivery_time.strftime("%H:%M")
  end

  def send_notification
    # returns notification of order in this format:
    # "Thank you! Your order was placed and will be delivered before 18:52"
    # replace 18:52 by the output of delivery time. 
  end
end