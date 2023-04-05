require "pry"
require "rspec"
require "./lib/boat"

RSpec.describe Boat do
  describe "#initialize" do
    it "exists" do
      kayak = Boat.new(:kayak, 20)

      expect(kayak).to be_a(Boat)
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(0)
    end
  end

  describe "#add_hour" do
    it "can add an hour to hours rented" do
      kayak = Boat.new(:kayak, 20)

      expect(kayak.hours_rented).to eq(0)
      kayak.add_hour
      expect(kayak.hours_rented).to eq(1)
    end
  end
end