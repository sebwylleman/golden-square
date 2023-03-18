require "todo_list"
require "todo"

RSpec.describe "TodoList class" do
  let(:todo1) { Todo.new("Cook dinner") }
  let(:todo2) { Todo.new("Clean room") }
  let(:todo3) { Todo.new("Go gym") }

  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      expect(todo_list.list).to eq [todo1, todo2, todo3]
    end
  end
  describe "#incomplete" do
    it "returns all non-done todos" do
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      expect(todo_list.incomplete).to eq [todo1, todo2, todo3]
    end
  end
  describe "#complete" do
    it "returns all done todos" do
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo1.mark_done!
      todo2.mark_done!
      todo3.mark_done!
      expect(todo_list.complete).to eq [todo1, todo2, todo3]
    end
  end
  describe "#give up" do
    it "marks all todos and complete" do
      todo_list = TodoList.new
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo1, todo2, todo3]
    end
  end
end