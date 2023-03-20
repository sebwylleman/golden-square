require "diary"

RSpec.describe "Diary class" do
  let(:sebs_diary) {Diary.new}
  let(:entry1) {double(:entry1, date: "12/12/12", content: "First holiday abroad with Ben, backpacking in India", contact: "Ben: 07777777199")}
  let(:entry2) {double(:entry2, date: "17/17/17", content: "First driving lesson with Charlie", contact: "Charlie: 07799777199")}

  context "when no entries given" do
    it "sets the diary entries to an empty array" do
      expect(sebs_diary.entries).to eq []
    end
  end
  describe "#add_entry" do
    it "adds diary entry to list" do
      sebs_diary.add_entry(entry1)
      expect(sebs_diary.entries).to include(entry1)
    end
  end
  describe "#read_entry" do
    it "reads the specific diary entry of the date that you passed as argument" do
      sebs_diary.add_entry(entry1)
      expect(sebs_diary.read_entry(entry1.date)).to eq entry1.content
    end
    it "returns an error when there are no entries for a particular date" do
      sebs_diary.add_entry(entry1)
      sebs_diary.add_entry(entry1)
      expect { sebs_diary.read_entry("12-12-2100") }.to raise_error "no entries for chosen date"
    end
  end
  describe "#read_entries_by_time" do
    it "returns the max amount of entries that the user can read given his reading speed and time" do
      sebs_diary.add_entry(entry1)
      sebs_diary.add_entry(entry2)
      expect(sebs_diary.read_entries_by_time(3, 2)).to eq entry2.content
    end
  end
  describe "#list_all_contacts" do
    it "lists all contacts with phone numbers from diary entries" do
      sebs_diary.add_entry(entry1)
      sebs_diary.add_entry(entry2)
      expect(sebs_diary.list_all_contacts).to eq [entry1.contact, entry2.contact].join(",")
    end
  end
end