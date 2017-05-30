require('minitest/autorun')
require_relative('../dice')

class TestDice < MiniTest::Test

  def setup
    @dice01 = Dice.new("Dicer")
  end

  def test_roll_result
    assert_equal(true, @dice01.roll_result.between?(1, 6))
  end

end