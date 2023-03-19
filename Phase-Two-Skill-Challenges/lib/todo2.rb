class Todo2
  attr_reader :description, :due_date

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def completed?

  end
end