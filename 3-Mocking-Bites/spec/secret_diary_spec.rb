require "secret_diary"

RSpec.describe "secret_diary class" do

  let(:diary) {double(:diary, contents: "My story")}
  let(:secret_diary) {SecretDiary.new(diary)} 

  it "throws an error by default" do
    expect{secret_diary.read}.to raise_error "Go away!"
  end
  it "returns the diary contents when unlocking the diary" do
    secret_diary.unlock
    allow(diary).to receive(:read).and_return("My story")
    expect(secret_diary.read).to eq "My story"
  end
  it "locks the diary" do
    secret_diary.unlock
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end
end