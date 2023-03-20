require "is_sentence"

describe "" do
  it "returns false for empty string" do
    expect(is_sentence?("")).to eq false
  end

  it "returns true if first word start with a capital letter and last word ends with chosen punctuation" do
    expect(is_sentence?("Hello World!")).to eq true
  end
  it "returns false if first word does not start with a capital letter" do
    expect(is_sentence?("hello world!")).to eq false
  end

  it "returns true if last character ends with chosen punctuation" do
    expect(is_sentence?("Hello World")).to eq false
  end
  it "returns false if last character ends with chosen punctuation" do
    expect(is_sentence?("hello world")).to eq false
  end
end
