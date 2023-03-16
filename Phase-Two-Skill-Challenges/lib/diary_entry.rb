class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    @title
  end

  def contents
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
    end_at = start_from + num_words_we_can_read
    words = @contents.split
    chunk = words[start_from...end_at].join(" ")
    if end_at > count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    chunk
  end   
end  