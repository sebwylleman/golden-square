require "present"

describe "Present class" do
  describe "wrap method" do
    it "throws an error if tries to wrap contents that have already been wrapped" do
      present1 = Present.new
      present1.wrap("jumper")
      expect { present1.wrap("trainers") }.to raise_error "A contents has already been wrapped."
    end
  end
  describe "unwrap method" do
    it "throws an error if no contents have been wrapped" do
      present1 = Present.new
      expect { present1.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end