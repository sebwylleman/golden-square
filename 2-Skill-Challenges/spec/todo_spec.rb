require "todo"

RSpec.describe "todo class" do
  describe "#initialise" do
    it "creates a new todo with the given task and sets it to not done" do
      todo = Todo.new("Cook dinner")
      expect(todo.task).to eq "Cook dinner"
      expect(todo.done?).to eq false
    end
  end
  describe "#mark_done!" do
    it "marks the todo as done returning nothing" do
      todo = Todo.new("Cook dinner")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end
  describe "#done?" do
    it "returns true if the task is done" do
      todo = Todo.new("Cook dinner")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
    it "returns false if the task is not done" do
      todo = Todo.new("Cook dinner")
      expect(todo.done?).to eq false
    end
  end
end

