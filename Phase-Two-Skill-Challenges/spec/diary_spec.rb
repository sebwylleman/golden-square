require "diary"

RSpec.describe "Diary class" do
  let(:sebs_diary) {Diary.new}
  let(:diary_entry) {double(:diary_entry, date: "18/03/23", content: "Walk in the park with dog")}
  let(:diary_entry2) {double(:diary_entry2, date: "16/03/23", content: "Go gym")}
  
  context "when no entries given" do
    it "sets the diary entries to an empty array" do
      expect(sebs_diary.entries).to eq []
    end
  end
  describe "#add_entry" do
    it "adds diary entry to list" do
      sebs_diary.add_entry(diary_entry)
      expect(sebs_diary.entries).to include(diary_entry)
    end
  end
  describe "#read_entry" do
    it "reads the specific diary entry of the date that you passed as argument" do
      sebs_diary.add_entry(diary_entry)
      expect(sebs_diary.read_entry(diary_entry.date)).to eq diary_entry.content
    end
    it "returns an error when there are no entries for a particular date" do
      sebs_diary.add_entry(diary_entry)
      sebs_diary.add_entry(diary_entry)
      expect { sebs_diary.read_entry("12-12-2100") }.to raise_error "no entries for chosen date"
    end
  end
  describe "#read_entries_by_time" do
    it "returns the max amount of entries that the user can read given his reading speed and time" do
      sebs_diary.add_entry(diary_entry)
      sebs_diary.add_entry(diary_entry2)
      expect(sebs_diary.read_entries_by_time(2, 2)).to eq diary_entry2.content
    end
  end

    
  
end