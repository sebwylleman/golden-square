class Diary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(diary_entry)
    @entries << diary_entry
  end

  def read_entry(chosen_date)
   entry = @entries.find {|entry| entry.date == chosen_date}
   fail "no entries for chosen date" if entry.nil?
   entry.content
  end

  def read_entries_by_time(wpm, available_time)
    total_words = wpm * available_time
    words_read = 0
  
    sorted_entries = @entries.sort_by { |entry| entry.content.split(" ").length }
    result = []
  
    sorted_entries.each do |entry|
      word_count = entry.content.split(" ").length
      break if words_read + word_count > total_words
      result << entry
      words_read += word_count
    end
    result.map(&:content).join(" ")
  end

  def list_all_contacts
    
  end
end
  