class Street
  attr_reader :name,
              :building_array

  def initialize(name)
    @name = name
    @building_array = []
  end

  def add_building(building)
    @building_array << building
  end

  def buildings
    @building_array.map(&:building_name).sort
  end

  # def number_of_available_apartments
  #   @building_array.each do |building|
  #     4 - building.list_apartments.count
  #   end
  # end
end
