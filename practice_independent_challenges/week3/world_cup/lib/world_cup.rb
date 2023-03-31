class WorldCup
  attr_reader :year,
              :teams

  attr_accessor :eliminated

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    @teams.filter_map do |team|
      team.players_by_position(position) if team.eliminated == false
    end.flatten
  end

  def all_players
    @teams.map do |team|
      team.players
    end.flatten
  end

  def all_players_by_position
    all_players.group_by do |player|
      player.position
    end
  end
end
