require "grammar_stats"

RSpec.describe "GrammarStats class" do
  context "checks if the text has the correct grammar" do
    it "returns false when no text given" do
      test = GrammarStats.new
      expect(test.check("")).to eq false
    end
    it "returns false when first letter isn't a capital" do
      test = GrammarStats.new
      expect(test.check("hello!")).to eq false
    end
    it "returns false when last letter isn't a punctuation mark" do
      test = GrammarStats.new
      expect(test.check("Hello World")).to eq false
    end
    it "returns true when first letter is cap and last is punctuation mark" do
      test = GrammarStats.new
      expect(test.check("Hello World!")).to eq true
    end
  end
  it "calculates the ratio of succesful grammar texts" do
    test = GrammarStats.new
    test.check("Hey")
    test.check("hola!")
    test.check("Bonjour!")
    expect(test.percentage_good).to eq 33
  end
end
    