require "todo_list"
require "todo"

RSpec.describe "todo_list Integration" do
  context "when we add a todo" do
    it "returns all incompleted todos" do
      tuesday = TodoList.new
      todo = Todo.new("Go gym")
      tuesday.add(todo)
      expect(tuesday.incomplete).to eq []
    end
  end
      
end