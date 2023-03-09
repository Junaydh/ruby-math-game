class Question
  def initialize
    @num1 = rand(1..25)
    @num2 = rand(1..25)
    @answer = @num1 + @num2
  end
  def question
    "What is #{@num1} + #{@num2}?"
  end
  def answer
    @answer
  end
end