class Player

  def initialize(name)
    @name = name
    @position = 1
  end

  def roll_dice(dice)
    return @position = dice.roll_result
  end

end