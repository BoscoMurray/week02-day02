class Dice
  attr_reader :roll_result

  def initialize(name)
    @name = name

  end

  def roll_result
    return rand(1..6)
  end

end