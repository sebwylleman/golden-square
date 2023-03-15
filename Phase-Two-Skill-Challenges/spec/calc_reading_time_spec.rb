require "calc_reading_time"

describe "calc_reading_time method" do
  it "empty string input" do
    expect(calc_reading_time("")).to eq 0
  end
  it "returns time if words are less than 200" do
    expect(calc_reading_time("hello")).to eq "less than one minute"
  end
  it "returns time for 200 words" do
    expect(calc_reading_time("hello " * 200)).to eq 1
  end
  it "returns time for 400 words" do
    expect(calc_reading_time("hello " * 400)).to eq 2
  end
end