class Track

  attr_reader :title, :artist
  
  def initialize(title, artist)
   # title and artist are both strings
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end