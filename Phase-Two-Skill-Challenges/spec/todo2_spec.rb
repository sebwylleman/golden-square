require "todo2"

RSpec.describe Task do
  let(:task) { Task.new("Buy groceries") }

  describe '#initialize' do
    it 'initializes a new task with the given description' do
      expect(task.description).to eq("Buy groceries")
    end

    it 'initializes a new task as not completed' do
      expect(task.completed?).to be false
    end
  end

  describe '#complete' do
    it 'marks a task as completed' do
      task.complete
      expect(task.completed?).to be true
    end
  end
end
