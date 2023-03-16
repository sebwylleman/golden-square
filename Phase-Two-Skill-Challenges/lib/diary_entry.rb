class DiaryEntry
  def initialize(title, contents) 
    # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm) 
    fail "Reading time must be greater than zero" if wpm <= 0
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    num_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = start_from + num_words_we_can_read - 1
    words = @contents.split
    chunk = words[start_from..end_at].join(" ")
    @furthest_word_read = (end_at + 1) % words.size
    chunk
  end   
end  