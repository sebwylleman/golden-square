require "task_list"

RSpec.describe TaskList do

  let(:monday) {TaskList.new}
  let(:task1) {double(:task1, title: "Go gym")}
  let(:task2) {double(:task2, title: "Go food shopping")}

  before do
    allow(task1).to receive(:complete?).and_return(false)
    allow(task2).to receive(:complete?).and_return(true)
  end

  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  describe "#all" do
    it "returns all tasks" do
      # Or do this, and remove the last 2 let lines from the top of file
      # task1 = double :task1
      # task2 = double :task1
      monday.add(task1)
      monday.add(task2)
      expect(monday.all).to eq [task1, task2]
    end
  end
  describe "#all_complete?" do
    it "returns false if no tasks have been added to the list" do
      expect(monday.all_complete?).to eq false
    end
    it "returns true if all tasks on list are complete" do
      allow(task1).to receive(:complete?).and_return(true)
      monday.add(task1)
      monday.add(task2)
      expect(monday.all_complete?).to eq true
    end
    it "returns false if one of the tasks on the list are not completed" do
      monday.add(task1)
      monday.add(task2)
    expect(monday.all_complete?).to eq false
    end
  end
end
