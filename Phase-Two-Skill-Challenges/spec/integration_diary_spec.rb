require "diary"
require "diary_entry"

# Test that filtering DiaryEntries by date range returns only the entries that fall within that range
# Test that filtering DiaryEntries by keyword returns only the entries that contain that keyword
# Test that filtering DiaryEntries by contact returns only the entries that contain that contact information
# Test that sorting DiaryEntries by date returns the entries in chronological order
# Test that sorting DiaryEntries by length of content returns the entries in order from shortest to longest
# Test that sorting DiaryEntries by contact returns the entries in alphabetical order by contact name

RSpec.describe "Integration test for our diary" do
let(:sebs_diary) {Diary.new}
let(:entry1) {DiaryEntry.new("12/12/12", "First holiday abroad with Ben, backpacking in India", "Ben: 07777777199")}
let(:entry2) {DiaryEntry.new("17/17/17", "First driving lesson with Charlie", "Charlie: 07799777199")}

before do
  sebs_diary.add_entry(entry1)
  sebs_diary.add_entry(entry2)
end

  it "tests that adding a DiaryEntry to a Diary updates the Diary's entries list" do
    expect(sebs_diary.entries).to eq [entry1, entry2]
  end
  it "tests that reading an entry from a diary returns the correct content from that diary" do
    expect(sebs_diary.read_entry("12/12/12")).to eq "First holiday abroad with Ben, backpacking in India"
  end
  it "tests to return an error message if a non existant date is given for an entry" do
    expect { sebs_diary.read_entry("20/20/20") }.to raise_error "no entries for chosen date"
  end
  it "returns correct amount of content that can be read given a time period and reading speed" do
    expect(sebs_diary.read_entries_by_time(3,2)).to eq entry2.content
  end
  it "tests to list all contacts" do
    expect(sebs_diary.list_all_contacts).to eq [entry1.contact, entry2.contact].join(",")
  end
end

    
