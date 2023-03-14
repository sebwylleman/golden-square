require "gratitudes"

describe "Gratitudes class" do
  describe "add" do
    it "adds a gratitude top the list" do
      gratitudes = Gratitudes.new
      gratitudes.add("family")
      gratitudes.add("wealth")
      expect(gratitudes.format).to eq "Be grateful for: family, wealth"
    end 
  end

  describe "format" do
    it "joins gratitude list and prints out a formatted message" do
      gratitudes = Gratitudes.new
      expect(gratitudes.format).to eq "Be grateful for: "
    end
  end
end