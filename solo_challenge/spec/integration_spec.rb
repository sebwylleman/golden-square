require "menu"
require "order"
require "notification"
require "time"
require 'twilio-ruby'
require 'rubygems'

RSpec.describe "Integration test" do
  let(:menu) {Menu.new}
  let(:my_order) {Order.new(menu)}
  let(:notification) {Notification.new(my_order.order_time)}

  before do
    my_order.add("Pizza", 2)
    my_order.add("Salad", 1)
  end

  it "displays a list of dishes with prices" do
    expect(menu.dishes).to eq({
      "Pizza" => 10.99,
      "Burger" => 8.99,
      "Pasta" => 12.99,
      "Salad" => 6.99,
      "Taco" => 3.99
    })
  end
  context "when ordering from the dishes list" do
    it "adds selected dishes with quantities to an order" do
      expect(my_order.tab).to eq({"Pizza" => 2, "Salad" => 1})
    end
    it "removes selected dishes from order" do
      my_order.remove_dish("Pizza", 2)
      expect(my_order.tab).to eq({"Salad" => 1})
    end
    it "removes selected quantities from order" do
      my_order.remove_quantity("Pizza", 2)
      expect(my_order.tab).to eq({"Pizza" => 1, "Salad" => 1})
    end
  end
  describe "total" do
    it "returns the sum of the bill with service charge" do
      expect(my_order.total).to eq 31.87
    end
  end
  describe "when an order is initialiazed" do
    it "saves the time whenever as soon as a new order is created" do
      expect(my_order.order_time).to be_within(1).of(Time.now)
    end
    it "calculates and returns the delivery time of the order" do
      expected_delivery_time = my_order.order_time + (30 * 60)
      delivery_time = Time.parse(notification.delivery_time_formatted)
      expect(delivery_time).to be_within(60).of(expected_delivery_time)
    end
    it "sends a SMS confirmation of order and delivery estimate time" do
      expect(notification.send_notification).to eq("Thank you! Your order was placed and will be delivered before #{delivery_time_formatted}")
    end
  end
end