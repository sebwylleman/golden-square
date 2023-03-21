# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num_1 = @io.gets.chomp.to_i
    @io.puts "Please enter another number"
    num_2 = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts format(num_1, num_2)
  end

  private
  def format(num_1,num_2)
    "#{num_1} - #{num_2} = #{num_1 - num_2}"
  end
end



# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run
