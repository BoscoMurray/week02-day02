require('minitest/autorun')
require_relative('../player')
require_relative('../dice')

class TestPlayer < MiniTest::Test

  def setup
    @dice01 = Dice.new("Dicer")
    @player01 = Player.new("Martin")
    @player02 = Player.new("Ross")
  end

  def test_roll_dice
    assert_equal(true, @player01.roll_dice(@dice01).between?(1, 6))
  end

end