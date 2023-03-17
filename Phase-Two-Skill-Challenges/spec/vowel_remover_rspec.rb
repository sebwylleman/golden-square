require 'vowel_remover'

RSpec.describe "remove_vowels method" do
  it "removes a vowel from a simple string" do
    remover = VowelRemover.new("ab")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "b"
  end

  it "removes vowels from a complex string" do
    remover = VowelRemover.new("We will remove the vowels from this sentence.")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq "W wll rmv th vwls frm ths sntnc."
  end
  it "removes all vowels from a string" do
    remover = VowelRemover.new("aeiou")
    result_no_vowels = remover.remove_vowels
    expect(result_no_vowels).to eq ""
  end
end
# # #   Add a new unit test to check that the program can remove all the vowels from "aeiou", 
# returning an empty string, "". 
# # If there are any problems reported by rspec after adding this new test, add binding.irb 
# # as a new line to debug vowel_remover.rb and discover where the problem is and make any necessary changes.

# # # If you're having trouble or aren't sure what to do and want to watch us running
# #  through the exercise using the debugger, here's our accompanying video covering 
# #  this vowel-removing exercise.