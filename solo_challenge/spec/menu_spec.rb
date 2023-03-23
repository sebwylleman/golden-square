require "menu"

RSpec.describe Menu do
  it "lists the dishes with prices from the restaurant menu" do
    restaurant = Menu.new
    expect(restaurant.dishes).to eq({
      "Pizza" => 10.99,
      "Burger" => 8.99,
      "Pasta" => 12.99,
      "Salad" => 6.99,
      "Taco" => 3.99
    })
  end
end