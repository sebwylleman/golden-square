require "diary"

RSpec.describe "Diary class" do
  it "reads its contents" do
    diary = Diary.new("My story")
    expect(diary.read).to eq "My story"
  end
end