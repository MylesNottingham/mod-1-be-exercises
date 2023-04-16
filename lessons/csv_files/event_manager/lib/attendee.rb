class Attendee
  attr_reader :id

  def initialize(id, first_name, last_name, zip)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zip = zip
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def zipcode
    @zip.to_s.rjust(5,"0")[0..4]
  end
end