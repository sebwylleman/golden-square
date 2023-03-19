require "todo2_list"
require "todo2"

RSpec.describe Todo2list do
  let(:todo_list) { Todo2list.new }
  let(:task) { Task.new("Buy groceries") }

  describe '#add_task' do
    it 'adds a task to the list' do
      todo_list.add_task(task)
      expect(todo_list.entries).to include(task)
    end
  end

  describe '#list_entries' do
    context 'when the list is empty' do
      it 'raises an error' do
        expect { todo_list.list_entries }.to raise_error(RuntimeError, "no task has been added to the list")
      end
    end

    context 'when the list has entries' do
      it 'returns the list of tasks' do
        todo_list.add_task(task)
        expect(todo_list.list_entries).to eq([task])
      end
    end
  end

  describe '#complete' do
    it 'completes a task' do
      todo_list.add_task(task)
      todo_list.complete(task)
      expect(task.completed?).to be true
    end
  end
end
