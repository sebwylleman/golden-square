class Todo2list
  attr_reader :entries
  def initialize
    @entries = []
  end

  def add_task(task)
    @entries << task
  end
  
  def list_entries
    fail "no task has been added to the list" if @entries == []
    @entries
  end

  def complete
  end
end