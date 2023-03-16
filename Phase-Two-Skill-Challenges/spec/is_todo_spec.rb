require "is_todo"

describe "is_todo? method" do
  context "given empty string" do
    it "returns false" do
      expect(is_todo?("")).to eq false
    end
  end 
  context "given a string with #TODO" do
    it "returns true" do
      expect(is_todo?("Go buy groceries #TODO")).to eq true
    end
  end
  context "given a string without #TODO" do
    it "returns false" do
      expect(is_todo?("Go buy groceries")).to eq false
    end
  end
end