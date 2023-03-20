class Track

  attr_reader :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    if keyword == @title || keyword == @artist
      true
    else
      false
    end
  end
end