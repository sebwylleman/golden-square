require "count_words"

RSpec.describe "count_words method" do
  context "Given an empty string" do
    it "returns 0" do
      expect(count_words("")).to eq(0)
    end
  end
  context "Given a string" do
    it "returns the number of words in that string" do
      expect(count_words("hello world")).to eq(2)
    end
  end
end