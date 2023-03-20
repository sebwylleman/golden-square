require "music_library"
require "track_spec"

RSpec.describe "music_library unit test" do

  let(:my_library) {MusicLibrary.new}
  let(:track1) {Track.new("Hey Jude", "The Beatles")}
  let(:track2) {Track.new("Let it be", "The Beatles")}

  describe "#add(track)" do
    it "adds track (instance of Track class) to the library" do
      my_library.add(track1)
      expect(my_library.all).to eq [track1]
    end
  end
  describe "#all" do
    it "lists tracks in music library" do
      my_library.add(track1)
      my_library.add(track2)
      expect(my_library.all).to eq [track1, track2]
    end
  end
  describe "#search(keyword)" do
    it "returns a list of tracks that match the keyword string" do
      my_library.add(track1)
      my_library.add(track2)
      expect(my_library.search("The Beatles")).to eq [track1, track2]
    end
  end
end
