require "make_snippet"

RSpec.describe "make_snippet method" do

  context "Given an empty string" do
    it "returns an empty string" do
      expect(make_snippet("")).to eq ""
    end
  end
  context "Given a string of 4 words" do
    it "returns the whole string" do
      result = make_snippet("Test driven development is an")
      expect(result).to eq "Test driven development is an"
    end
    context "Given a string of 5 words or more" do
      it "returns five words followed by '...'" do
        result = make_snippet("Test driven development is an approach to building software")
        expect(make_snippet(result)).to eq "Test driven development is an..."
      end
    end
  end
end