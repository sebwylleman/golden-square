require "music_library"

RSpec.describe "music_library unit test" do

  # Another way of doing it. Learn both!

  # let(:my_library) {MusicLibrary.new}
  # let(:track1) {double(:track1, title: "Let it be", artist: "The Beatles")}
  # let(:track2) {double(:track2, title: "Hey Jude", artist: "The Beatles")}

  # before do
  #   allow(track1).to receive(:matches?).with("Beatles").and_return(true)
  #   allow(track1).to receive(:matches?).with("Daft Punk").and_return(false)
  #   allow(track2).to receive(:matches?).with("Beatles").and_return(true)
  #   allow(track2).to receive(:matches?).with("Yellow Submarine").and_return(false)
  # end

  describe "#add(track)" do
    it "adds track (instance of Track class) to the library" do
      my_library = MusicLibrary.new
      track1 = double :track
      my_library.add(track1)
      expect(my_library.all).to eq [track1]
    end
  end
  describe "#all" do
    it "lists tracks in music library" do
      my_library = MusicLibrary.new
      track1 = double :track
      track2 = double :track
      my_library.add(track1)
      my_library.add(track2)
      expect(my_library.all).to eq [track1, track2]
    end
  end
  describe "#search(keyword)" do
    it "returns a list of tracks that match the keyword string" do
      my_library = MusicLibrary.new
      track1 = double :track, matches?: true 
      track2 = double :track, matches?: false
      my_library.add(track1)
      my_library.add(track2)
      expect(my_library.search("Let")).to eq [track1]
    end
  end
end
