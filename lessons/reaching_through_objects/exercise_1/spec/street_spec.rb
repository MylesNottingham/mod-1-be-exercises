require "spec_helper"

RSpec.describe Street do
  describe "#initialize" do
    it "exists" do
      adlington = Street.new("Adlington Road")

      expect(adlington).to be_a(Street)
    end

    it "has a name" do
      adlington = Street.new("Adlington Road")

      expect(adlington.name).to eq("Adlington Road")
    end

    it "can read @building_array" do
      adlington = Street.new("Adlington Road")

      expect(adlington.building_array).to eq([])
    end
  end

  describe "#add_building" do
    it "can add buildings to @building_array" do
      adlington = Street.new("Adlington Road")
      bldg = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      expect(adlington.building_array).to eq([])

      adlington.add_building(bldg)
      adlington.add_building(zebra)

      expect(adlington.building_array).to eq([bldg, zebra])
    end
  end

  describe "#buildings" do
    it "can return array of buildings on street sorted alpabetically" do
      adlington = Street.new("Adlington Road")
      bldg = Building.new("623", "Savills Apartment Building")
      zebra = Building.new("123", "Zebra Apartments")

      adlington.add_building(zebra)
      adlington.add_building(bldg)

      expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
    end
  end

  # describe "#number_of_available_apartments" do
  #   it "can return total number of available apartments" do
  #     adlington = Street.new("Adlington Road")

  #     bldg = Building.new("623", "Savills Apartment Building")
  #     zebra = Building.new("123", "Zebra Apartments")

  #     apt_1 = Apartment.new
  #     apt_2 = Apartment.new
  #     apt_3 = Apartment.new
  #     apt_4 = Apartment.new

  #     bathroom = Room.new("bathroom")
  #     laundry = Room.new("laundry")
  #     kitchen = Room.new("kitchen")
  #     bedroom = Room.new("bedroom")

  #     apt_1.add_room(bathroom)
  #     apt_1.add_room(laundry)
  #     apt_1.add_room(kitchen)
  #     apt_1.add_room(bedroom)

  #     apt_2.add_room(bathroom)
  #     apt_2.add_room(laundry)
  #     apt_2.add_room(kitchen)
  #     apt_2.add_room(bedroom)

  #     apt_3.add_room(bathroom)
  #     apt_3.add_room(laundry)
  #     apt_3.add_room(bedroom)

  #     apt_4.add_room(laundry)
  #     apt_4.add_room(bedroom)

  #     bldg.add_apartment(apt_1)
  #     bldg.add_apartment(apt_2)
  #     bldg.add_apartment(apt_3)
  #     bldg.add_apartment(apt_4)

  #     zebra.add_apartment(apt_1)
  #     zebra.add_apartment(apt_2)
  #     zebra.add_apartment(apt_3)
  #     zebra.add_apartment(apt_4)

  #     adlington.add_building(bldg)
  #     adlington.add_building(zebra)

  #     expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])
  #   end
  # end
end
