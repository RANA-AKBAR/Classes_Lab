class SportsTeam

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach, points = 0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def change_coach(new_coach)
     @coach = new_coach
  end

  def new_player(new_player)
    @players.push(new_player)
  end

  def player_exists(player_name)
    @players.include?(player_name)
  end


def point_change(result)
  res_hash = {"win" => 2,
   "draw" => 1,
  "loss" => 0}

@points += res_hash[result]
end

end
