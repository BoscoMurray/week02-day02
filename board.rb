class Board
  attr_accessor :players

  def initialize(name, players)
    @name = name
    @players = players
    @turn_index = 0
  end

  def has_player_won(player)
    return "#{player.name} has won!" if player.position >= 36
  end

  def next_player(players)
    if @turn_index < players.count
      @turn_index += 1
    else
      @turn_index = 0
    end
  end

  def player_takes_turn(players, dice)
    players[@turn_index].roll_dice(dice)
    next_player(players)
  end

end