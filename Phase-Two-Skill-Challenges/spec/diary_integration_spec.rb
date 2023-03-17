require "diary"
require "diary_entry"

RSpec.describe "Diary integration" do
  context "when adding diary entries" do
    it "returns a list of those entries" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      diary_entry2 = DiaryEntry.new("my_title2", "my_contents2")
      diary.add(diary_entry)
      diary.add(diary_entry2)
      expect(diary.all).to eq [diary_entry, diary_entry2]
    end
  end

  describe "#count words" do
    it "counts the number of words in all diary entries" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my contents")
      diary_entry2 = DiaryEntry.new("my_title2", "my contents2")
      diary.add(diary_entry)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 4
    end
  end
end
