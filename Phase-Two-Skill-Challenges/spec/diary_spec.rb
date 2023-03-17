require "diary"

RSpec.describe "diary class" do
  context "when no diary entries" do
  it "returns an empty list" do
    diary = Diary.new
    expect(diary.all).to eq []
    end
  end
end