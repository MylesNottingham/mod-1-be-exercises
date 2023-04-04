require "spec_helper"

RSpec.describe Apartment do
  describe "#initialize" do
    it "exists" do
      apartment = Apartment.new

      expect(apartment).to be_a(Apartment)
    end

    it "begins with empty rooms" do
      apartment = Apartment.new

      expect(apartment.rooms).to eq([])
    end
  end

  describe "#is_rented?" do
    it "is not rented by default" do
      apartment = Apartment.new

      expect(apartment.is_rented?).to eq(false)
    end
  end

  describe "#rent" do
    it "can be rented" do
      apartment = Apartment.new

      expect(apartment.is_rented?).to eq(false)
      apartment.rent
      expect(apartment.is_rented?).to eq(true)
    end
  end

  describe "#add_room" do
    it "can add rooms to @rooms" do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")

      expect(apartment.rooms).to eq([])

      apartment.add_room(bathroom)
      apartment.add_room(laundry)
      apartment.add_room(kitchen)
      apartment.add_room(bedroom)

      expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
    end

    it "will not add more than four rooms to @rooms" do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")
      theater = Room.new("theater")

      expect(apartment.rooms).to eq([])

      apartment.add_room(bathroom)
      apartment.add_room(laundry)
      apartment.add_room(kitchen)
      apartment.add_room(bedroom)
      apartment.add_room(theater)

      expect(apartment.rooms).to eq([bathroom, laundry, kitchen, bedroom])
    end
  end

  describe "#list_rooms_by_name_alphabetically" do
    it "can return array of rooms sorted alphabetically by name" do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")

      apartment.add_room(bathroom)
      apartment.add_room(laundry)
      apartment.add_room(kitchen)
      apartment.add_room(bedroom)

      expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
  end
end
