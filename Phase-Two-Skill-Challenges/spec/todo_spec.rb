require "todo"

RSpec.describe "todo class" do
  describe "#task method" do
    it "returns a task" do
      todo = Todo.new("Cook dinner")
      expect(todo.task).to eq "Cook dinner"
    end
  end
end
