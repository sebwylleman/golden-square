require "order"

RSpec.describe Order do
  let(:menu) {double(:menu, dishes: {
    "Pizza" => 10.99,
    "Burger" => 8.99,
    "Pasta" => 12.99,
    "Salad" => 6.99,
    "Taco" => 3.99
  })}
  let(:my_order) {Order.new(menu)}

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
end