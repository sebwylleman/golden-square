class GrammarStats
  def initialize
    @correct_text_count = 0
    @total = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    return false if text == ""

    is_cap = false
    is_punc = false
  
    first_word = text.split(" ")[0]
    first_letter = first_word.chars.first
    first_letter_up = first_word.chars.first.upcase
  
    is_cap = true if first_letter == first_letter_up
   
    last_char = text.split(" ").last.chars.last
    [".", "?", "!"].each do |element|
      if element.include?(last_char)
        is_punc = true
      end
    end
    @total += 1
    if is_cap == true && is_punc == true
      @correct_text_count += 1
      true
    else
      false
    end
  end

  def percentage_good
    valid_texts = ((@correct_text_count.to_f / @total) * 100).round
    valid_texts
  end
end