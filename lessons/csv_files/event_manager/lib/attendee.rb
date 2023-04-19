class Attendee
  attr_reader :id

  def initialize(row)
    @id = row[:id]
    @first_name = row[:first_name]
    @last_name = row[:last_name]
    @zipcode = row[:zipcode]
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def zipcode
    @zipcode.to_s.rjust(5,"0")[0..4]
  end
end
