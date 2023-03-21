require "string_repeater"

RSpec.describe "StringRepeater class" do
  it "when the user inputs a string and x num, it outputs the string x times" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("TWIX").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("10\n").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")

    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end
end