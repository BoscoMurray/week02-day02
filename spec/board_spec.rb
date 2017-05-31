require('minitest/autorun')
require_relative('../board')
require_relative('../player')
require_relative('../dice')

class TestBoard < MiniTest::Test

  def setup
    @dice01 = Dice.new("Dicer")
    @player01 = Player.new("Martin")
    @player02 = Player.new("Ross")
    @players = [@player01, @player02]
    @board = Board.new("sal", @players)
  end

  def test_has_player_won__yes
    @player01.position = 36
    assert_equal("Martin has won!", @board.has_player_won(@player01))
  end

  def test_has_player_won__no
    assert_nil(@board.has_player_won(@player01))
  end

  def test_next_player
    assert_equal()
  end



end