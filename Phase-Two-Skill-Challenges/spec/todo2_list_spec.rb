require "todo2_list"

RSpec.describe "Todo2list class" do
  let(:monday) {Todo2list.new}
  let(:task1) {double(:task1, description: "wash clothes", due_date: "20/12/20")}
  let(:task2) {double(:task2, description: "go food shopping", due_date: "21/12/20")}

  describe "#add_task method" do
    it "adds task to list when given a string of characters" do
    monday.add_task(task1)
    monday.add_task(task2)
      expect(monday.entries).to eq [task1, task2]
    end
  end
  describe "#list_task" do
    it "displays the todolist made from saved entries" do
      monday.add_task(task1)
      monday.add_task(task2)
      expect(monday.list_entries).to eq [task1, task2]
    end
    it "throws an error when not given a task" do
      expect{monday.list_entries}.to raise_error "no task has been added to the list"
    end
  end
end


  