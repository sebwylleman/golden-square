class MusicTracks
  def initialize
    @list = []
  end
  
  def list
    fail "error, no tracks on list, please add" if @list.empty?
    @list.join(" ")
  end

  def complete(track)
    fail "error, no tracks on list, please add" if @list.empty?
    fail "error, no tracks on existing list, please add" unless @list.include?(track)
    @list.delete(track)
  end

  def add(track)
    @list << track
  end
end
