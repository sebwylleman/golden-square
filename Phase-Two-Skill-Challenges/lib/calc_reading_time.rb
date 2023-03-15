def calc_reading_time(words)
  return 0 if words == ""
  word_count = words.split(" ").size
  reading_time = word_count / 200
  if word_count < 200 
    "less than one minute"
  elsif word_count == 200
   reading_time
  else
    reading_time
  end
end