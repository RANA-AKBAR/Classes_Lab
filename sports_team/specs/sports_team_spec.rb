require ("minitest/autorun")
require ("minitest/rg")

require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test
  def test_return_properties
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    assert_equal("Raptors", team.name())
    assert_equal(["Rana", "Josh","Fidelma"], team.players())
    assert_equal("Jarrod", team.coach())
  end

  def test_change_name
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    team.change_coach("Paul")
    assert_equal("Paul", team.coach())
  end

  def test_new_player
      team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
      team.new_player("John")
      assert_equal(["Rana", "Josh", "Fidelma", "John"], team.players)
  end

  def test_player_exists__true
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    player_here = team.player_exists("Rana")
    assert_equal(true, player_here)
  end

  def test_player_exists__false
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    player_here = team.player_exists("Bob")
    assert_equal(false, player_here)
  end

  def test_points
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    assert_equal(0, team.points)
  end

  def test_point_change__win
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    team.point_change("win")
    assert_equal(2, team.points)
  end

  def test_point_change__loss
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    team.point_change("loss")
    assert_equal(0, team.points)
  end

  def test_point_change__draw
    team = SportsTeam.new("Raptors", ["Rana", "Josh", "Fidelma"], "Jarrod")
    team.point_change("draw")
    assert_equal(1, team.points)
  end



end
