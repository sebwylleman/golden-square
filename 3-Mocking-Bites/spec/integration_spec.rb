require "secret_diary"
require "diary"

RSpec.describe "integration" do
  it "initialises" do
    diary = Diary.new("My secret stuff")
    secret_diary = SecretDiary.new(diary)
    expect{secret_diary.read}.to raise_error("Go away!")
  end
    
  it "unlocks and reads" do
    diary = Diary.new("My secret stuff")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq("My secret stuff")
  end
end