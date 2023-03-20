require "track"

RSpec.describe "Track class" do

  let(:track1) {Track.new("Hey Jude", "The Beatles")}
  let(:track2) {Track.new("Let it be", "The Beatles")}

  it "sets the title and artist attributes correctly" do
    expect(track1.title).to eq "Hey Jude"
    expect(track1.artist).to eq "The Beatles"
  end
end
    