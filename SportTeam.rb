class SportTeam
  attr_reader :team_name
  attr_accessor :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name()
  #   return@team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def new_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end
  def add_new_player(new_player_name)
      @players << new_player_name
  end

  def check_name_in_players(name_be_chcked)
    @players.include?(name_be_chcked)
  end

  def win_or_lose_points(game_points)
    @points += game_points
  end

end
