require "secret_diary"
require "diary"

RSpec.describe "Integration" do

  let(:diary) {Diary.new("My story")}
  let(:secret_diary) {SecretDiary.new(diary)}

  it "locks the diary and fails to read its contents" do
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end
  it "it unlocks the diary to read its contents" do
    secret_diary.unlock
    expect(secret_diary.read).to eq "My story"
  end
  it "returns an error message by default when trying to read the diary before unlocking" do
    expect{secret_diary.read}.to raise_error "Go away!"
  end
end