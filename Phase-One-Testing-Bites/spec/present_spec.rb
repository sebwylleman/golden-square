require "present"

describe "Present class" do
  describe "wrap method when error" do
    it "throws an error if tries to wrap contents that have already been wrapped" do
      present1 = Present.new
      present1.wrap("jumper")
      expect { present1.wrap("trainers") }.to raise_error "A contents has already been wrapped."
    end
  end
  describe "unwrap method when error" do
    it "throws an error if no contents have been wrapped" do
      present1 = Present.new
      expect { present1.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
  # the `happy` path
  describe "wrap and unrap if no errors are thrown" do
    it "succesfully wraps then unraps contents" do
      present1 = Present.new
      present1.wrap("shirt")
      expect(present1.unwrap).to eq "shirt"
    end
  end
end