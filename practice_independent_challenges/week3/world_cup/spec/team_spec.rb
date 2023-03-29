require "rspec"
require "./lib/player"
require "./lib/team"

RSpec.describe Team do
  describe "Iteration 2" do
    before(:each) do
      @team = Team.new("France")
      @mbappe = Player.new({ name: "Kylian Mbappe", position: "forward" })
      @pogba = Player.new({ name: "Paul Pogba", position: "midfielder" })
    end

    it "exists" do
      expect(@team).to be_a(Team)
    end

    it "has a country" do
      expect(@team.country).to eq("France")
    end

    it "can be eliminated" do
      expect(@team.eliminated?).to eq(false)

      @team.eliminated = true

      expect(@team.eliminated?).to eq(true)
    end

    it "starts with no players" do
      expect(@team.players).to eq([])
    end

    it "can add players" do
      @team.add_player(@mbappe)
      @team.add_player(@pogba)

      expect(@team.players).to eq([@mbappe, @pogba])
    end

    it "can return players by position" do
      @team.add_player(@mbappe)
      @team.add_player(@pogba)

      expect(@team.players_by_position("midfielder")).to eq([@pogba])
      expect(@team.players_by_position("defender")).to eq([])
    end
  end
end
