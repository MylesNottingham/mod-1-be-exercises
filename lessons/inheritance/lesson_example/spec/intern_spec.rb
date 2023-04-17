require './lib/intern'

RSpec.describe Intern do
  before(:each) do
    @intern = Intern.new(5, "Chris", "0")
  end

  describe "setup" do
    it "exists" do
      expect(@intern).to be_a Intern
    end

    it "has an hourly_rate attribute" do
      expect(@intern.hourly_rate).to eq(5)
    end

    it "can get coffee" do
      expect(@intern).to respond_to(:get_coffee)
      expect(@intern.get_coffee).to eq("Who got the latte?")
    end

    # The Intern should also have the ability to have the "sick_leave" benefit, and not just the one it starts with.
    it "has benefits" do
      expect(@intern.benefits).to be_an(Array)
      expect(@intern.benefits.length).to eq(2)
      expect(@intern.benefits).to eq([:gets_to_get_me_coffee, :sick_leave])
    end
  end

  describe "Ability to have name and ID, like any other Employee" do
    # Write tests to prove that an Intern can be an Employee, with name and ID.
    it "has a name" do
      expect(@intern.name).to eq("Chris")
    end

    it "has an ID" do
      expect(@intern.id).to eq("0")
    end
  end

  describe "total_compensation" do
    # Write tests to prove that an Intern return total compensation.
    it "has total_compensation" do
      expect(@intern.total_compensation).to eq(10000)
    end
  end
end
