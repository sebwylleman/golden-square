require 'rubygems'
require 'twilio-ruby'

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
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages.create(
                             body: "Thank you! Your order was placed and will be delivered before #{delivery_time_formatted}",
                             from: ENV['CUSTOMER_PHONE_NUMBER'],
                             to: ENV['CUSTOMER_PHONE_NUMBER']
                           )
    puts message.sid
  end
end