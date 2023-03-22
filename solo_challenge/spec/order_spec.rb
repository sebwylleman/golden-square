require "order"
require "menu"

RSpec.describe Order do
  let(:menu) {Menu.new} # use a double here? as we are only unit testing this file
  let(:my_order) {Order.new(menu)}

  before do
    my_order.add("Pizza", 2)
  end

  it "adds dishes and quantities to order" do
    expect(my_order.tab).to eq({"Pizza" => 2})
  end
end