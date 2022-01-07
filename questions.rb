class Question 
  attr_accessor :result

  def create_question
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2

    @question = "What does #{@number1} plus #{@number2} equal?"
    @result = [@question, @answer]
  end
end

