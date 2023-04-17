require './lib/ceo'

RSpec.describe Ceo do
  before(:each) do
    @ceo = Ceo.new(100000, 25000, "Ali", "1")
  end

  describe "setup" do
    it "exists" do
      expect(@ceo).to be_a(Ceo)
    end
    it "has base_salary and bonus attributes" do
      expect(@ceo.base_salary).to eq(100000)
      expect(@ceo.bonus).to eq(25000)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
    it "has name and id" do
      expect(@ceo.name).to eq("Ali")
      expect(@ceo.id).to eq("1")
    end

    it "has total_compensation" do
      expect(@ceo.total_compensation).to eq(125001)
    end
  end
end
