require "interactive_calculator"

RSpec.describe "InteractiveCalculator class test" do
  it "takes user input, and outputs the difference" do
    io = double (:io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return("4\n").ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3\n").ordered
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("4 - 3 = 1").ordered 

    substraction_calc = InteractiveCalculator.new(io)
    substraction_calc.run
  end
end