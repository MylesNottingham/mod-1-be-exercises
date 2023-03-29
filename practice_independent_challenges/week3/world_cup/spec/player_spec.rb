require "rspec"
require "./lib/player"

RSpec.describe Player do
  describe "Iteration 1" do
    before(:each) do
      @player = Player.new({ name: "Luka Modric", position: "midfielder" })
    end

    it "exists" do
      expect(@player).to be_a(Player)
    end

    it "has a name" do
      expect(@player.name).to eq("Luka Modric")
    end

    it "has a position" do
      expect(@player.position).to eq("midfielder")
    end
  end
end
