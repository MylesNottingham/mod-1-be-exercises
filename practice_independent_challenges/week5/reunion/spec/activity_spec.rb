require "./lib/activity"

RSpec.describe Activity do
  before(:each) do
    @activity = Activity.new("Brunch")
  end

  describe "#initialize" do
    it "instantiates an Activity object with attributes" do
      expect(@activity).to be_an(Activity)
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe "#add_participant(name, paid)" do
    it "can add a participant to the activity" do
      expect(@activity.participants).to eq({})

      @activity.add_participant("Maria", 20)

      expect(@activity.participants).to eq({"Maria" => 20})

      @activity.add_participant("Luther", 40)

      expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end
  end

  describe "#total_cost" do
    it "can return the total cost paid for the activity" do
      expect(@activity.total_cost).to eq(0)

      @activity.add_participant("Maria", 20)

      expect(@activity.total_cost).to eq(20)

      @activity.add_participant("Luther", 40)

      expect(@activity.total_cost).to eq(60)
    end
  end

  describe "#split" do
    it "can split the total cost of the activity between participants" do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)

      expect(@activity.total_cost).to eq(60)
      expect(@activity.split).to eq(30)
    end
  end

  describe "#owed" do
    it "can return the amount owed by or to each participant" do
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)

      expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
      expect(@activity.split).to eq(30)
      expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
end
