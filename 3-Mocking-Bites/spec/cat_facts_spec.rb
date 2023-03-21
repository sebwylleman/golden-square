require "cat_facts"
require "net/http"

RSpec.describe "CatFacts class test" do
  it "provides a random cat fact from a web server" do
    mock_requester = double(:requester)
    catfact = CatFacts.new(mock_requester)
    expect(mock_requester).to receive(:get).and_return('{"fact":"Cats lived with soldiers in trenches, where they killed mice during World War I.","length":80}')
    expect(catfact.provide).to eq "Cat fact: Cats lived with soldiers in trenches, where they killed mice during World War I."
  end
end