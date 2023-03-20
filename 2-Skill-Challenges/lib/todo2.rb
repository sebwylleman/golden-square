class Task
  attr_reader :description, :completed

  def initialize(description)
    @description = description
    @completed = false
  end

  def complete
    @completed = true
  end

  def completed?
    @completed
  end
end
