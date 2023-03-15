def is_sentence?(sentence)
  return false if sentence == ""

  is_cap = false
  is_punc = false

  first_word = sentence.split(" ")[0]
  first_letter = first_word.chars.first
  first_letter_up = first_word.chars.first.upcase

  is_cap = true if first_letter == first_letter_up
 
  last_char = sentence.split(" ").last.chars.last
  [".", "?", "!"].each do |element|
    if element.include?(last_char)
      is_punc = true
    end
  end
 
  if is_cap == true && is_punc == true
    true 
  else
    false
  end
end