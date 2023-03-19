class Todo2
  attr_reader :description, :due_date

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
    @completed = false
  end

  def completed?
    @completed
  end
end