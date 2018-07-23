require("minitest/autorun")
require("minitest/rg")
require_relative("../SportTeam.rb")

class TestSportTeam < MiniTest::Test

  def setup()
    @sportteam = SportTeam.new("Tiger", ["Alex", "Ronny", "Billy", "Lucy"], "Mary_Anne", 0)
  end

  def test_team_name()
    assert_equal("Tiger", @sportteam.team_name())
  end

  def test_players_name()
    result = ["Alex", "Ronny", "Billy", "Lucy"]
    assert_equal(result, @sportteam.players())
  end

  def test_coach_name()
    assert_equal("Mary_Anne", @sportteam.coach())
  end

  def test_update_coach_name()
    result = @sportteam.coach = "Johnny"
    assert_equal("Johnny", @sportteam.coach())
  end

  def test_add_new_player()
    @sportteam.add_new_player("Kate")
    result = ["Alex", "Ronny", "Billy", "Lucy", "Kate"]
    assert_equal(result, @sportteam.players())
  end

  def test_check_name_in_players()
    result = @sportteam.check_name_in_players("Alex")
    assert_equal(true, result)

  end

  def test_win_or_lose_ponits()
    result = @sportteam.win_or_lose_points(10)
    assert_equal(10, result)
  end

end
