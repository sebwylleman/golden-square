class TodoList

  attr_reader :list

  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @list << todo
  end

  def incomplete
    @list.reject(&:done?)
  end

  def complete
    @list.select(&:done?)
  end

  def give_up!
    # Marks all todos as complete
    @list.each(&:mark_done!)
  end
end