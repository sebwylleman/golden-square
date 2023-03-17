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

  describe "word counting behaviour" do
    it "counts the number of words in all diary entries" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my contents")
      diary_entry2 = DiaryEntry.new("my_title2", "my contents2")
      diary.add(diary_entry)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 4
    end
  end
  describe "reading time calculation" do
    it "returns an estimate of the reading time in minutes" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my title", "my content is short")
      diary_entry2 = DiaryEntry.new("my title2", "my content is the longest")
      diary.add(diary_entry)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 5
    end
    it "fails when wpm is 0" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my title", "my content is short")
      diary.add(diary_entry)
      expect { diary.reading_time(0) }.to raise_error "wmp speed can't be 0"
    end
  end
end
