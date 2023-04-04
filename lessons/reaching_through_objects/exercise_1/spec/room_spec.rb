require "spec_helper"

RSpec.describe Room do
  describe "#initialize" do
    it "exists" do
      bathroom = Room.new("bathroom")

      expect(bathroom).to be_an_instance_of(Room)
    end

    it "has a name" do
      bathroom = Room.new("bathroom")

      expect(bathroom.name).to eq("bathroom")
    end

    it "can have a different name" do
      bedroom = Room.new("bedroom")

      expect(bedroom.name).to eq("bedroom")
    end
  end
end
