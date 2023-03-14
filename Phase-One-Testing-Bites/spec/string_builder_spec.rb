require "string_builder"

describe "String Builder class" do
  describe "add" do
    it "creates a string from user input" do
      string1 = StringBuilder.new
      expect(string1.add("hello")).to eq "hello"
     end
  end
  
  describe "size" do
    it "returns the number of characters in string" do
      string1 = StringBuilder.new
      string1.add("hello")
      expect(string1.size).to eq 5
    end

    describe "output" do
      it "returns a string from the inputed string" do
        string1 = StringBuilder.new
        string1.add("hello")
        expect(string1.output).to eq "hello"
      end
    end

  end
end