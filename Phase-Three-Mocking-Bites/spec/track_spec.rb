require "track"

RSpec.describe "Track class" do

  let(:track1) {Track.new("Hey Jude", "The Beatles")}
  let(:track2) {Track.new("Let it be", "The Beatles")}

  it "sets the title and artist attributes correctly" do
    expect(track1.title).to eq "Hey Jude"
    expect(track1.artist).to eq "The Beatles"
  end

  it "returns true if the keyword matches either the title or artist, false if otherwise" do
    expect(track1.matches?("Hey Jude")).to eq true
    expect(track2.matches?("Noir")).to eq false
  end
end
    