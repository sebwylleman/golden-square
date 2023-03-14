require 'counter'

describe "Counter" do
  it "Keeps count of the numbers we give it" do
    count_1 = Counter.new
    count_1.add(2)
    result = count_1.report
    expect(result).to eq "Counted to 2 so far"
  end
  it "Checks if user input is number" do
    count_1 = Counter.new
    count_1.add(-1)
    result = count_1.report
    expect(result).to eq "Wrong input, please enter a positive integer."
  end
end