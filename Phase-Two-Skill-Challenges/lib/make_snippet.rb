# Design a method called make_snippet that takes a string as an argument and 
# returns the first five words and then a '...' if there are more than that.
def make_snippet(phrase)
  words = phrase.split(" ")
  if words.length > 5
    words.first(5).join(" ") + "..."
  else
    words.join(" ")
  end
end