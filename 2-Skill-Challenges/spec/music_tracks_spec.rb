require "music_tracks"

RSpec.describe "MusicTracks class" do
  context "Unintended behaviour" do
    it "throws an error when trying to list an empty list" do
      seb = MusicTracks.new
      expect { seb.list }.to raise_error "error, no tracks on list, please add"
    end
    it "throws an error when trying to remove a track on an empty list" do
      seb = MusicTracks.new
      expect { seb.complete("Hey Jude") }.to raise_error "error, no tracks on list, please add"
    end
    it "throws an error when trying to remove a track that doesn't appear on an existing list if tracks" do
      seb = MusicTracks.new
      seb.add("Let if be")
      expect { seb.complete("Hey Jude") }.to raise_error "error, no tracks on existing list, please add"
    end
  end

  context "Happy path/intended behaviour (for lack of a better term)" do
    it "removes existing track from playlist, then lists it" do
      seb = MusicTracks.new
      seb.add("Hey Jude")
      seb.add("Let it be")
      expect(seb.complete("Let it be")).to eq "Let it be"
    end
    it "adds tracks to list, then lists them" do
      seb = MusicTracks.new
      seb.add("Hey Jude")
      seb.add("Let it be")
      expect(seb.list).to eq "Hey Jude Let it be"
    end
  end
end