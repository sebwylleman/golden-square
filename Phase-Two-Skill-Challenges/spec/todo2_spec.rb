require "todo2"

RSpec.describe "todo tasks class" do
  let(:task1) {Todo2.new("Go gym", "12/12/12")}

  it "checks that the todo has the correct attribute value from the user input" do
    expect(task1.description).to eq "Go gym"
  end
  it "checks that the todo has the correect attribute value from the user input" do
    expect(task1.due_date).to eq "12/12/12"
  end

  describe "#completed method" do
    it "returns true if task is completed, false by default" do
      expect(task1.completed?).to eq false
    end
  end
end

