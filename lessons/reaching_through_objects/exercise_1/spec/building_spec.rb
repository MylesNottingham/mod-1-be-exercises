require "spec_helper"

RSpec.describe Building do
  describe "#initialize" do
    it "exists" do
      bldg = Building.new("623", "Savills Apartment Building")

      expect(bldg).to be_a(Building)
    end

    it "has a number" do
      bldg = Building.new("623", "Savills Apartment Building")

      expect(bldg.building_number).to eq("623")
    end

    it "has a name" do
      bldg = Building.new("623", "Savills Apartment Building")

      expect(bldg.building_name).to eq("Savills Apartment Building")
    end
  end

  describe "#add_apartment" do
    it "can add apartments to @apartments" do
      bldg = Building.new("623", "Savills Apartment Building")
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      expect(bldg.list_apartments).to eq([])

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_5])
    end

    it "will not add more than four apartments to @apartments" do
      bldg = Building.new("623", "Savills Apartment Building")
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_3 = Apartment.new
      apt_4 = Apartment.new
      apt_5 = Apartment.new

      expect(bldg.list_apartments).to eq([])

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_3)
      bldg.add_apartment(apt_4)
      bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_3, apt_4])
    end
  end

  describe "#list_apartments" do
    it "can return array of apartments in building" do
      bldg = Building.new("623", "Savills Apartment Building")
      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      expect(bldg.list_apartments).to eq([])

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_5])
    end
  end
end
