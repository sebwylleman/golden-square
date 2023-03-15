require "make_snippet"

RSpec.describe "make_snippet method" do
  context "Given a string of 5 words" do
    it "returns first five words" do
      result = make_snippet("Test driven development is an")
      expect(result).to eq "Test driven development is an"
    end
    # it "returns five words followed by '...'" do
    #   result = make_snippet("Test driven development is an approach to building software")
    #   expect(make_snippet(result)).to eq "Test driven development is an..."
    # end
  end
end