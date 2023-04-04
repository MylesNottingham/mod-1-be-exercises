class Apartment
  attr_reader :rooms

  def initialize
    @rented = false
    @rooms = []
  end

  def is_rented?
    @rented
  end

  def rent
    @rented = true
  end

  def add_room(room)
    @rooms << room if @rooms.count < 4
  end

  def list_rooms_by_name_alphabetically
    @rooms.map(&:name).sort
  end
end
