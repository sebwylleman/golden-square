require "counter"

RSpec.describe Counter do
  it "returns zero by default, without any arguments" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far"
  end

  it "returns a count of added values" do
    counter = Counter.new
    counter.add(2)
    counter.add(3)
    counter.add(1)
    expect(counter.report).to eq "Counted to 6 so far"
  end
  it "returns a count of added values" do
    counter = Counter.new
    counter.add(1)
    expect(counter.report).to eq "Counted to 1 so far"
  end
  
end
