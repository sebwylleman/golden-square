require "diary_entry"

RSpec.describe "DiaryEntry" do
  it "constructs" do
    monday = DiaryEntry.new("my_title", "my_contents")
    expect(monday.title).to eq "my_title"
    expect(monday.contents).to eq "my_contents"
  end
  describe "#count_words" do
    it "returns count of words passed in second argument" do
      monday = DiaryEntry.new("my_title", "one two three")
      expect(monday.count_words).to eq 3
    end
    it "returns 0 when for no arguments" do
       monday = DiaryEntry.new("my_title", "")
      expect(monday.count_words).to eq 0
    end
  end
  describe "#reading_time" do
    context "given word count that is larger than the reading time per minute" do
      it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm." do
        monday = DiaryEntry.new("my_title", "one " * 300)
        expect(monday.reading_time(150)).to eq 2
      end
    end
    
    context "given reading time equals 0" do
      it "fail" do
        monday = DiaryEntry.new("my_title", "one two three")
        expect { monday.reading_time(0) }.to raise_error "Reading time must be greater than zero"
      end
    end
  end
  describe "#reading_chunk" do
    context "with a contents readable within the time" do
      it "returns the full text" do
        monday = DiaryEntry.new("my_title", "one two three")
        expect(monday.reading_chunk(150, 2)).to eq "one two three"
      end
    end
    context "with a contents unreadable within the time" do
      it "returns all the words that the user can read" do
        monday = DiaryEntry.new("my_title", "one two three")
        expect(monday.reading_chunk(2, 1)).to eq "one two"
      end
    end
    it "returns the next chunk next time it's called" do
      monday = DiaryEntry.new("my_title", "one two three four")
      monday.reading_chunk(2, 1)
      expect(monday.reading_chunk(2, 1)).to eq "three four"
    end
  end
end