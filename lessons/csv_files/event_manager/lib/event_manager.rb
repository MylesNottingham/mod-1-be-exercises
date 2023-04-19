require "csv"

class EventManager
  attr_reader :attendees

  def initialize(csv)
    @attendees = (CSV.open csv, headers: true, header_converters: :symbol).map do |row|
      attendee = Attendee.new(row)
    end
  end
end
