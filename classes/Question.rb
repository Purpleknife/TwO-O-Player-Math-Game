# To keep track of the random numbers in the questions.

class Question
  attr_reader :num_1, :num_2, :answer

  def initialize()
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @answer = num_1 + num_2
  end

end