require "todo_list"

RSpec.describe "TodoList class" do
  context "if the list is empty, i.e. no inputs given" do
    it "returns error message when asked to print an empty list" do
      today = TodoList.new
      expect { today.list }.to raise_error "no todos on list"
    end
    it "returns error message when asked to remove a todo from empty list" do
      today = TodoList.new
      expect { today.completed("Go gym") }.to raise_error "list is empty, can't remove todo"
    end
  end
  context "when we remove a non existing task" do
    it "throws an error message" do
      today = TodoList.new
      today.add("Buy groceries")
      expect { today.completed("Go gym") }.to raise_error "completed todo is not included in the list, can't remove it"
    end
  end

  context "desired behaviour (happy path)" do
    it "adds todos to list and sees them" do
      today = TodoList.new
      today.add("Buy groceries")
      today.add("Go gym")
      today.list => ["Buy groceries", "Go gym"]
    end
    it "removes completed todos from the list" do
      today = TodoList.new
      today.add("Buy groceries")
      today.add("Go gym")
      today.completed("Buy groceries")
      today.list => ["Go gym"]
    end
  end 
end