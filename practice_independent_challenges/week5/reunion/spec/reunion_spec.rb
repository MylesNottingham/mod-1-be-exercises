require "./lib/reunion"
require "./lib/activity"

RSpec.describe Reunion do
  before(:each) do
    @reunion = Reunion.new("1406 BE")
    @activity_1 = Activity.new("Brunch")
    @activity_2 = Activity.new("Bar Tab")

    @activity_1.add_participant("Maria", 20)
    @activity_1.add_participant("Luther", 40)

    @activity_2.add_participant("Maria", 100)
    @activity_2.add_participant("Luther", 60)
  end

  describe "#initialize" do
    it "instantiates an Reunion object with attributes" do
      expect(@reunion).to be_an(Reunion)
      expect(@reunion.name).to eq("1406 BE")
      expect(@reunion.activities).to eq([])
    end
  end

  describe "#add_activity(activity)" do
    it "can add an activity to activities in reunion" do
      expect(@reunion.activities).to eq([])

      @reunion.add_activity(@activity_1)

      expect(@reunion.activities).to eq([@activity_1])
      expect(@reunion.activities.first).to be_an(Activity)
    end

    it "can add another activity to activities in reunion" do
      expect(@reunion.activities).to eq([])

      @reunion.add_activity(@activity_1)
      @reunion.add_activity(@activity_2)

      expect(@reunion.activities).to eq([@activity_1, @activity_2])
    end
  end

  describe "#total_cost" do
    it "can return the total cost of all activities in reunion" do
      expect(@reunion.total_cost).to eq(0)

      @reunion.add_activity(@activity_1)
      @reunion.add_activity(@activity_2)

      expect(@reunion.total_cost).to eq(220)
    end
  end

  describe "#total_owed" do
    it "can return the total amount owed by or to each participant for reunion" do
      expect(@reunion.total_owed).to eq({})

      @reunion.add_activity(@activity_1)
      @reunion.add_activity(@activity_2)

      expect(@reunion.total_owed).to eq({ "Luther" => 10, "Maria" => -10 })
    end
  end

  describe "#print_summary" do
    it "can print a summary of reunion" do
      @reunion.add_activity(@activity_1)
      @reunion.add_activity(@activity_2)

      expect(@reunion.print_summary).to eq("Maria is owed 10\nLuther owes 10")
    end
  end
end