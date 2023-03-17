class TodoList

  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
  end

  def completed(todo)
    fail "list is empty, can't remove todo" if @todo_list == []
    @todo_list.delete(todo)
  end

  def list
  fail "no todos on list" if @todo_list == []
   @todo_list
  end
end