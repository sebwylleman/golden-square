require "diary"

RSpec.describe "diary class" do
  context "when no diary entries" do
  it "returns an empty list" do
    diary = Diary.new
    expect(diary.all).to eq []
    end
  end
  it "has a word count of zero" do
    diary = Diary.new
    expect(count_words).to eq 0
  end
end