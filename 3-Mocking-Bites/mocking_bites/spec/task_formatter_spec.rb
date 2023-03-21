require "task_formatter"

RSpec.describe "TaskFormatter class" do

  let(:task) {double(:task, title: "Go to bed before 11")}
  let(:task_formatter) {TaskFormatter.new(task)}

  context "when task is complete" do
    it "returns the task formatted as: `[ ] Task title`" do
      allow(task).to receive(:complete?).and_return(true)
      expect(task_formatter.format).to eq("[ ] " + task.title)
    end
  end
  context "when task is incomplete" do
    it "returns the task formatted as: `[x] Task title`" do
      allow(task).to receive(:complete?).and_return(false)
      expect(task_formatter.format).to eq("[x] " + task.title)
    end
  end
end