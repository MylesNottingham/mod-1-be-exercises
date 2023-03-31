require "rspec"
require "./lib/player"
require "./lib/team"
require "./lib/world_cup"

RSpec.describe WorldCup do
  describe "Iteration 3" do
    before(:each) do
      @mbappe = Player.new({ name: "Kylian Mbappe", position: "forward" })
      @pogba = Player.new({ name: "Paul Pogba", position: "midfielder" })
      @modric = Player.new({ name: "Luka Modric", position: "midfielder" })
      @vida = Player.new({ name: "Domagoj Vida", position: "defender" })
      @france = Team.new("France")
      @croatia = Team.new("Croatia")
      @france.add_player(@mbappe)
      @france.add_player(@pogba)
      @croatia.add_player(@modric)
      @croatia.add_player(@vida)
      @world_cup = WorldCup.new(2018, [@france, @croatia])
    end

    it "exists" do
      expect(@mbappe).to be_a(Player)
      expect(@pogba).to be_a(Player)
      expect(@modric).to be_a(Player)
      expect(@vida).to be_a(Player)
      expect(@france).to be_a(Team)
      expect(@croatia).to be_a(Team)
      expect(@world_cup).to be_a(WorldCup)
    end

    it "has a year" do
      expect(@world_cup.year).to eq(2018)
    end

    it "has teams" do
      expect(@world_cup.teams).to eq([@france, @croatia])
    end

    it "can return active players by position" do
      expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])
    end

    it "can update if teams are eliminated" do
      expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])

      @croatia.eliminated = true

      expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba])
    end
  end

  describe "Iteration 4" do
    before(:each) do
      @mbappe = Player.new({ name: "Kylian Mbappe", position: "forward" })
      @pogba = Player.new({ name: "Paul Pogba", position: "midfielder" })
      @modric = Player.new({ name: "Luka Modric", position: "midfielder" })
      @vida = Player.new({ name: "Domagoj Vida", position: "defender" })
      @france = Team.new("France")
      @croatia = Team.new("Croatia")
      @france.add_player(@mbappe)
      @france.add_player(@pogba)
      @croatia.add_player(@modric)
      @croatia.add_player(@vida)
      @world_cup = WorldCup.new(2018, [@france, @croatia])
    end

    it "can return all players" do
      expect(@world_cup.all_players).to eq([@mbappe, @pogba, @modric, @vida])
    end

    it "can return all players by position" do
      expect(@world_cup.all_players_by_position).to eq({
        "forward" => [@mbappe],
        "midfielder" => [@pogba, @modric],
        "defender" => [@vida]
        })
    end
  end
end
