require "./lib/manager"

RSpec.describe Manager do
  before(:each) do
    @manager = Manager.new(50000, "Ben", "5")
  end

  describe "setup" do
    it "exists" do
      expect(@manager).to be_a Manager
    end

    it "has base_salary, per_team_rate, and departments attributes" do
      expect(@manager.base_salary).to eq(50000)
      expect(@manager.per_team_rate).to eq 5
      expect(@manager.departments).to be_instance_of Array
      expect(@manager.departments.length).to eq (0)
    end

    it "can add_department" do
      @manager.add_department("Sales")
      expect(@manager.departments).to eq(["Sales"])
      expect(@manager.departments.length).to eq(1)
    end

    it "has benefits to start with" do
      expect(@manager.benefits).to eq([:sick_leave, :health_insurance])
    end
  end

  describe "Ability to have name and ID, like any other Employee" do
    # Write tests to prove that a Manager instance can have a Name and ID number, like any other Employee.
    # Also, a Manager should be able to receive a total compensation. Write at least one test that proves they can access this method.
    it "has name and id" do
      expect(@manager.name).to eq("Ben")
      expect(@manager.id).to eq("5")
    end

    it "has total_compensation" do
      expect(@manager.total_compensation).to eq(50000)
    end
  end
end