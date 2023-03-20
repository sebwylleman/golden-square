# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @library << track
  end

  def all
   @library
  end
  
  def search(keyword)
    # Returns a list of tracks that match the string keyword
    @library.select {|track| track.matches?(keyword)}
  end
end