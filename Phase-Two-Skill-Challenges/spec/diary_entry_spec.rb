require "diary_entry"

RSpec.describe "DiaryEntry class" do
  describe "initialization" do
    it "sets the date" do
      entry = DiaryEntry.new("14/14/14", "Work conference trip to Tokyo", "Yiruma: +81570626903")
      expect(entry.date).to eq("14/14/14")
    end
    it "sets the content" do
      entry = DiaryEntry.new("14/14/14", "Work conference trip to Tokyo", "Yiruma: +81570626903")
      expect(entry.content).to eq("Work conference trip to Tokyo")
    end
    it "sets the contact" do
      entry = DiaryEntry.new("14/14/14", "Work conference trip to Tokyo", "Yiruma: +81570626903")
      expect(entry.contact).to eq("Yiruma: +81570626903")
    end
  end
end