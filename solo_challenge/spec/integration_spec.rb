# require "notification"
# require "order"
require "menu"

RSpec.describe "Integration test" do
  let(:cantine) {Menu.new}

  it "lists menu" do
    expect(cantine.menu).to eq(menu = {
      "Pizza" => 10.99,
      "Burger" => 8.99,
      "Pasta" => 12.99,
      "Salad" => 6.99,
      "Taco" => 3.99
    })
  end
end